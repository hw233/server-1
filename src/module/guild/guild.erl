%%%------------------------------------------------------------------
%%% @doc
%%% module guild
%%% @end
%%%------------------------------------------------------------------
-module(guild).
%% API
-export([
    server_start/0,
    server_stop/0,
    save/0,
    %% operation
    create/4,
    apply/3,
    cancel_apply/2,
    cancel_all_apply/1,
    approve_apply/2,
    approve_all_apply/1,
    reject_apply/2,
    reject_all_apply/1,
    leave/1,
    kick/2,
    dismiss/1,
    update_job/3,
    %% assist
    broadcast/2,
    broadcast/3,
    role_guild_id/1,
    %% table
    guild_table/0,
    role_index_table/0,
    role_table/1,
    apply_index_table/0,
    apply_table/1,
    get_guild/1,
    get_role/1,
    get_role/2,
    get_apply/1,
    get_apply/2
]).

%% Includes
-include_lib("stdlib/include/ms_transform.hrl").
-include("common.hrl").
-include("guild.hrl").
%%%==================================================================
%%% API functions
%%%==================================================================
%% @doc guild server start
-spec server_start() -> ok.
server_start() ->
    %% guild
    ets:new(guild_table(), [named_table, set, {keypos, #guild.guild_id}, {read_concurrency, true}]),
    %% save guild
    SaveGuild = fun(#guild{guild_id = GuildId}) ->
        %% new role table
        ets:new(role_table(GuildId), [named_table, set, {keypos, #guild_role.role_id}, {read_concurrency, true}]),
        %% new apply table
        ets:new(apply_table(GuildId), [named_table, set, {keypos, #guild_apply.role_id}, {read_concurrency, true}])
    end,
    %% guild
    GuildList = guild_sql:select_join(),
    ets:insert(guild_table(), GuildList),
    [SaveGuild(Guild) || Guild <- GuildList],
    %% new none guild id role table
    ets:new(role_table(0), [named_table, set, {keypos, #guild_role.role_id}, {read_concurrency, true}]),
    %% guild role
    GuildRoleIndexList = [begin ets:insert(role_table(GuildId), GuildRole), {GuildId, RoleId} end || GuildRole = #guild_role{guild_id = GuildId, role_id = RoleId} <- guild_role_sql:select_join()],
    ets:new(role_index_table(), [named_table, set, {keypos, 2}, {read_concurrency, true}]),
    ets:insert(role_index_table(), GuildRoleIndexList),
    %% guild apply
    GuildApplyIndexList = [begin ets:insert(apply_table(GuildId), GuildApply), {GuildId, RoleId} end || GuildApply = #guild_apply{guild_id = GuildId, role_id = RoleId} <- guild_apply_sql:select_join()],
    ets:new(apply_index_table(), [named_table, bag, {keypos, 2}, {read_concurrency, true}]),
    ets:insert(apply_index_table(), GuildApplyIndexList),
    %% save timer first after 3 minutes
    erlang:send_after(?MINUTE_MILLISECONDS(3), self(), loop),
    {ok, #guild_state{tick = 0}}.

%% @doc guild server stop
-spec server_stop() -> ok.
server_stop() ->
    save().

%% @doc save data
-spec save() -> ok.
save() ->
    guild_table(),
    F = fun([#guild{guild_id = GuildId}]) ->
        %% save role
        guild_role_sql:insert_update(role_table(GuildId)),
        %% save apply
        guild_apply_sql:insert_update(apply_table(GuildId))
    end,
    ess:map(F, guild_table()),
    %% save guild
    guild_sql:insert_update(guild_table()),
    %% save non guild role
    guild_role_sql:insert_update(role_table(0)),
    ok.

%% @doc create
-spec create(RoleId :: non_neg_integer(), UserName :: binary() | string(), Level :: non_neg_integer(), GuildName :: binary() | string()) -> {ok, GuildId :: non_neg_integer()} | {error, Code :: non_neg_integer()}.
create(RoleId, RoleName, Level, GuildName) ->
    Now = time:ts(),
    OldGuildId = role_guild_id(RoleId),
    Cd = parameter_data:get(guild_create_cd),
    case ets:lookup(role_table(OldGuildId), RoleId) of
        [] ->
            do_create(RoleId, RoleName, Level, GuildName, Now);
        [#guild_role{guild_id = 0, leave_time = LeaveTime}] when LeaveTime + Cd < Now ->
            do_create(RoleId, RoleName, Level, GuildName, Now);
        [_] ->
            {error, time_in_join_cd}
    end.

do_create(RoleId, RoleName, Level, GuildName, Now) ->
    GuildRole = #guild_role{role_id = RoleId, role_name = RoleName, job = ?GUILD_JOB_MEMBER, join_time = Now, flag = 1},
    case validate_name(GuildName) of
        true ->
            %% save guild
            Guild = #guild{guild_name = GuildName, leader_id = RoleId, leader_name = RoleName, level = Level, create_time = Now},
            GuildId = guild_sql:insert(Guild),
            NewGuild = Guild#guild{guild_id = GuildId},
            ets:insert(guild_table(), NewGuild),
            %% save guild role
            NewGuildRole = GuildRole#guild_role{guild_id = GuildId},
            guild_role_sql:insert_update([NewGuildRole]),
            RoleTable = role_table(GuildId),
            ets:new(RoleTable, [named_table, {keypos, #guild_role.role_id}, {read_concurrency, true}]),
            ets:insert(RoleTable, NewGuildRole),
            %% new apply table
            ets:new(apply_table(GuildId), [named_table, {keypos, #guild_apply.role_id}, {read_concurrency, true}]),
            {ok, GuildId};
        {false, length, _} ->
            {error, length};
        {false, asn1, _} ->
            {error, not_utf8};
        {false, sensitive} ->
            {error, sensitive};
        {false, duplicate} ->
            {error, duplicate}
    end.

%% @doc apply
-spec apply(GuildId :: non_neg_integer(),  RoleId :: non_neg_integer(), Name :: binary()) -> {ok, ok} | {error, non_neg_integer()}.
apply(GuildId, RoleId, Name) ->
    Now = time:ts(),
    Cd = parameter_data:get(guild_join_cd),
    OldGuildId = role_guild_id(RoleId),
    case ets:lookup(role_table(OldGuildId), RoleId) of
        [] ->
            do_apply(GuildId, RoleId, Name);
        [#guild_role{guild_id = 0, leave_time = LeaveTime}] when LeaveTime + Cd < Now ->
            do_apply(GuildId, RoleId, Name);
        [_] ->
            {error, time_in_join_cd};
        _ ->
            {error, no_such_guild}
    end.

do_apply(GuildId, RoleId, Name) ->
    case ets:lookup(guild_table(), GuildId) of
        [#guild{}] ->
            Apply = #guild_apply{
                guild_id = GuildId,
                role_id = RoleId,
                role_name = Name,
                flag = 1
            },
            ets:insert(apply_table(GuildId), Apply),
            ets:insert(apply_index_table(), {GuildId, RoleId}),
            %% @todo notify msg to leader
            {ok, ok};
        [_] ->
            {error, already_join_guild};
        _ ->
            {error, no_such_guild}
    end.

%% @doc cancel apply
-spec cancel_apply(GuildId :: non_neg_integer(), RoleId :: non_neg_integer()) -> {ok, ok}.
cancel_apply(GuildId, RoleId) ->
    %% delete db data
    guild_apply_sql:delete(RoleId, GuildId),
    %% clear ets apply data
    ets:delete(apply_table(GuildId), RoleId),
    %% clear index
    List = lists:keydelete(1, GuildId, ets:lookup(apply_index_table(), RoleId)),
    ets:insert(apply_index_table(), List),
    {ok, ok}.

%% @doc cancel all apply
-spec cancel_all_apply(RoleId :: non_neg_integer()) -> {ok, ok} | {error, non_neg_integer()}.
cancel_all_apply(RoleId) ->
    List = ets:take(apply_index_table(), RoleId),
    [ets:delete(apply_table(GuildId), RoleId) || {GuildId, _} <- List],
    {ok, ok}.

%% @doc approve apply
-spec approve_apply(LeaderId :: non_neg_integer(), MemberId :: non_neg_integer()) -> {ok, ok} | {error, non_neg_integer()}.
approve_apply(LeaderId, MemberId) ->
    GuildId = role_guild_id(LeaderId),
    RoleTable = role_table(GuildId),
    case check_role(ets:lookup(RoleTable, LeaderId), [{job, ?GUILD_JOB_VICE}]) of
        ok ->
            join_check(GuildId, RoleTable, MemberId);
        _ ->
            {error, permission_denied}
    end.

join_check(GuildId, RoleTable, MemberId) ->
    case ets:lookup(RoleTable, MemberId) of
        [] ->
            case ets:lookup(apply_table(GuildId), MemberId) of
                [#guild_apply{role_name = RoleName}] ->
                    join_check_limit(GuildId, RoleTable, MemberId, RoleName);
                _ ->
                    {error, no_such_apply}
            end;
        _ ->
            {error, already_join_guild}
    end.

join_check_limit(GuildId, RoleTable, RoleId, RoleName) ->
    case ets:lookup(guild_table(), GuildId) of
        [#guild{level = Level}] ->
            LimitList = parameter_data:get(guild_member_limit),
            {_, Limit} = listing:key_find(Level, 1, LimitList, {Level, 0}),
            case ets:info(RoleTable, size) < Limit of
                true ->
                    join(RoleTable, GuildId, RoleId, RoleName);
                _ ->
                    {error, member_number_limit}
            end;
        _ ->
            {error, no_such_guild}
    end.

%% apply info to role info
join(RoleTable, GuildId, RoleId, RoleName) ->
    Role = #guild_role{
        guild_id = GuildId,
        role_id = RoleId,
        job = ?GUILD_JOB_MEMBER,
        role_name = RoleName,
        flag = 1
    },
    %% save new role
    ets:insert(RoleTable, Role),
    ets:insert(role_index_table(), {GuildId, RoleId}),
    %% clear db data
    guild_apply_sql:delete_role_id(RoleId),
    %% clear apply data
    lists:foreach(fun({ApplyGuildId, ApplyRoleId}) -> ets:delete(apply_table(ApplyGuildId), ApplyRoleId) end, ets:lookup(apply_index_table(), RoleId)),
    %% delete index data
    ets:delete(apply_index_table(), RoleId),
    %% @todo broadcast join msg
    {ok, ok}.

%% @doc approve all apply
-spec approve_all_apply(LeaderId :: non_neg_integer()) -> {ok, ok} | {error, non_neg_integer()}.
approve_all_apply(LeaderId) ->
    GuildId = role_guild_id(LeaderId),
    RoleTable = role_table(GuildId),
    case check_role(ets:lookup(RoleTable, LeaderId), [{job, ?GUILD_JOB_VICE}]) of
        ok ->
            ess:foreach(fun([#guild_apply{role_id = RoleId, role_name = RoleName}]) -> join_check_limit(GuildId, RoleTable, RoleId, RoleName) end, apply_table(GuildId));
        _ ->
            {error, permission_denied}
    end.

%% @doc reject apply
-spec reject_apply(LeaderId :: non_neg_integer(), MemberId :: non_neg_integer()) -> {ok, ok} | {error, non_neg_integer()}.
reject_apply(LeaderId, MemberId) ->
    GuildId = role_guild_id(LeaderId),
    RoleTable = role_table(GuildId),
    case check_role(ets:lookup(RoleTable, LeaderId), [{job, ?GUILD_JOB_VICE}]) of
        ok ->
            %% delete db data
            guild_apply_sql:delete(MemberId, GuildId),
            %% clear ets apply data
            ets:delete(apply_table(GuildId), MemberId),
            %% clear index
            List = lists:keydelete(1, GuildId, ets:lookup(apply_index_table(), MemberId)),
            ets:insert(apply_index_table(), List),
            {ok, ok};
        {error, role} ->
            {error, you_not_join_guild};
        {error, job} ->
            {error, permission_denied}

    end.

%% @doc reject all apply
-spec reject_all_apply(LeaderId :: non_neg_integer()) -> {ok, ok} | {error, non_neg_integer()}.
reject_all_apply(LeaderId) ->
    GuildId = role_guild_id(LeaderId),
    RoleTable = role_table(GuildId),
    case check_role(ets:lookup(RoleTable, LeaderId), [{job, ?GUILD_JOB_VICE}]) of
        ok ->
            %% delete db data
            guild_apply_sql:delete_guild_id(GuildId),
            %% clear ets apply data
            ets:delete(apply_table(GuildId)),
            %% clear index
            ets:insert(apply_index_table(), ets:select(ets:fun2ms(fun(Index = {ThisGuildId, _}) when ThisGuildId =/= GuildId -> Index end), apply_index_table())),
            {ok, ok};
        _ ->
            {error, permission_denied}
    end.

%% @doc leave
-spec leave(RoleId :: non_neg_integer()) -> {ok, ok} | {error, non_neg_integer()}.
leave(RoleId) ->
    GuildId = role_guild_id(RoleId),
    RoleTable = role_table(GuildId),
    case ets:lookup(RoleTable, RoleId) of
        [#guild_role{job = ?GUILD_JOB_LEADER}] ->
            %% leader leave dismiss it
            do_dismiss(RoleTable, GuildId);
        [GuildRole = #guild_role{}] ->
            %% @todo broadcast leave msg
            ets:insert(role_table(0), GuildRole#guild_role{guild_id = 0}),
            ets:delete(RoleTable, RoleId),
            ets:update_element(role_index_table(), RoleId, {1, 0}),
            {ok, ok};
        _ ->
            {error, you_not_join_guild}
    end.

%% @doc kick
-spec kick(LeaderId :: non_neg_integer(), MemberId :: non_neg_integer()) -> {ok, ok} | {error, non_neg_integer()}.
kick(LeaderId, MemberId) ->
    GuildId = role_guild_id(LeaderId),
    RoleTable = role_table(GuildId),
    case ets:lookup(RoleTable, LeaderId) of
        [#guild_role{job = Job = ?GUILD_JOB_LEADER}] ->
            case ets:lookup(RoleTable, MemberId) of
                [GuildRole = #guild_role{job = MemberJob}] when Job =/= MemberJob ->
                    %% @todo broadcast be kick msg
                    ets:insert(role_table(0), GuildRole#guild_role{guild_id = 0}),
                    ets:delete(RoleTable, MemberId),
                    ets:update_element(role_index_table(), MemberId, {1, 0}),
                    {ok, ok};
                [#guild_role{}] ->
                    {error, permission_denied};
                _ ->
                    {error, he_not_join_guild}
            end;
        [#guild_role{}] ->
            {error, permission_denied};
        _ when LeaderId == MemberId ->
            {error, cannot_kick_self};
        _ ->
            {error, you_not_join_guild}
    end.

%% @doc dismiss
-spec dismiss(LeaderId :: non_neg_integer()) -> {ok, ok} | {error, non_neg_integer()}.
dismiss(LeaderId) ->
    GuildId = role_guild_id(LeaderId),
    RoleTable = role_table(GuildId),
    case ets:lookup(RoleTable, LeaderId) of
        [#guild_role{job = ?GUILD_JOB_LEADER}] ->
            do_dismiss(RoleTable, GuildId);
        [#guild_role{}] ->
            {error, permission_denied};
        _ ->
            {error, you_not_join_guild}
    end.

do_dismiss(RoleTable, GuildId) ->
    %% delete db guild data
    guild_sql:delete(GuildId),
    ets:delete(guild_table(), GuildId),
    %% @todo broadcast dismiss msg
    %% delete role
    NonGuildRoleTable = role_table(0),
    ess:foreach(fun(Role = #guild_role{role_id = RoleId}) -> ets:insert(NonGuildRoleTable, Role#guild_role{guild_id = 0}), ets:delete(role_index_table(), RoleId) end, RoleTable),
    %% delete apply
    guild_apply_sql:delete_guild_id(GuildId),
    ets:delete(apply_table(GuildId)),
    {ok, ok}.

-spec update_job(LeaderId :: non_neg_integer(), MemberId :: non_neg_integer(), Job :: pos_integer()) -> {ok, ok} | {error, non_neg_integer()}.
update_job(LeaderId, MemberId, Job) ->
    GuildId = role_guild_id(LeaderId),
    RoleTable = role_table(GuildId),
    case ets:lookup(RoleTable, LeaderId) of
        [#guild_role{job = LeaderJob}] when Job < LeaderJob ->
            case ets:lookup(RoleTable, MemberId) of
                [Role = #guild_role{job = MemberJob}] when MemberJob < LeaderJob ->
                    NewRole = Role#guild_role{job = Job, flag = 1},
                    ets:insert(RoleTable, NewRole),
                    %% @todo broadcast be job update msg
                    {ok, ok};
                [#guild_role{}] ->
                    {error, job_invalid};
                _ ->
                    {error, he_not_join_guild}
            end;
        [#guild_role{}] ->
            {error, permission_denied};
        _ when LeaderId == MemberId ->
            {error, cannot_update_self};
        _ ->
            {error, you_not_join_guild}
    end.

%% @doc validate guild name
-spec validate_name(String :: binary() | list()) -> true | {false, Reason :: term()} | {false, atom(), Reason :: term()}.
validate_name(GuildName) ->
    Condition = [{length, 1, 6}, sensitive, {sql, io_lib:format("SELECT `guild_id` FROM `guild` WHERE `guild_name` = '~s'", [GuildName])}],
    word:validate(Condition, GuildName).


%%%==================================================================
%%% common tool
%%%==================================================================

%% @doc check guild role
-spec check_role(GuildRole :: #guild_role{}, List :: list()) -> ok | error.
check_role(_, []) ->
    ok;
check_role(GuildRole = #guild_role{guild_id = GuildId}, [{guild_id, GuildId} | T]) ->
    check_role(GuildRole, T);
check_role(GuildRole = #guild_role{job = Job}, [{job, ThisJob} | T]) when Job =< ThisJob ->
    check_role(GuildRole, T);
check_role(GuildRole = #guild_role{job = 1}, [leader | T]) ->
    check_role(GuildRole, T);
check_role(GuildRole = #guild_role{job = 2}, [vice | T]) ->
    check_role(GuildRole, T);
check_role(GuildRole = #guild_role{job = 3}, [elite | T]) ->
    check_role(GuildRole, T);
check_role(GuildRole = #guild_role{job = 4}, [member | T]) ->
    check_role(GuildRole, T);
check_role([], _) ->
    {error, role};
check_role(_, [{What, _} | _]) ->
    {error, What};
check_role(_, [What | _]) ->
    {error, What}.

%% @doc send data to local server all online role
-spec broadcast(GuildId :: non_neg_integer(), Data :: binary()) -> ok.
broadcast(GuildId, Data) ->
    ess:foreach(fun([#guild_role{role_id = RoleId}]) -> user_sender:send(RoleId, Data) end, role_table(GuildId)).

-spec broadcast(GuildId :: non_neg_integer(), Data :: binary(), ExceptId :: non_neg_integer()) -> ok.
broadcast(GuildId, Data, ExceptId) ->
    ess:foreach(fun([#guild_role{role_id = RoleId}]) -> RoleId =/= ExceptId andalso user_sender:send(RoleId, Data) == ok end, role_table(GuildId)).

%% @doc role guild status
-spec role_guild_id(RoleId :: non_neg_integer()) -> non_neg_integer().
role_guild_id(RoleId) ->
    element(2, hd(tool:default(ets:lookup(role_index_table(), RoleId), [{0, 0}]))).

%%%==================================================================
%%% ets data set get/set
%%%==================================================================

%% @doc guild ets name
-spec guild_table() -> atom().
guild_table() ->
    guild.

-spec role_index_table() -> atom().
role_index_table() ->
    guild_role_index.

%% @doc guild role ets name
-spec role_table(GuildId :: non_neg_integer()) -> atom().
role_table(GuildId) ->
    type:to_atom(lists:concat([guild_role_, GuildId])).

-spec apply_index_table() -> atom().
apply_index_table() ->
    guild_apply_index.

%% @doc guild apply ets name
-spec apply_table(GuildId :: non_neg_integer()) -> atom().
apply_table(GuildId) ->
    type:to_atom(lists:concat([guild_apply_, GuildId])).

%% @doc find guild
-spec get_guild(GuildId :: non_neg_integer()) -> [#guild{}] | [].
get_guild(GuildId) ->
    ets:lookup(guild_table(), GuildId).

%% @doc find role
-spec get_role(RoleId :: non_neg_integer()) -> [#guild_role{}] | [].
get_role(RoleId) ->
    GuildId = role_guild_id(RoleId),
    get_role(RoleId, GuildId).

%% @doc find role
-spec get_role(RoleId :: non_neg_integer(), GuildId :: non_neg_integer()) -> [#guild_role{}] | [].
get_role(RoleId, GuildId) ->
    ets:lookup(role_table(GuildId), RoleId).

%% @doc find apply
-spec get_apply(RoleId :: non_neg_integer()) -> [#guild_apply{}] | [].
get_apply(RoleId) ->
    GuildId = role_guild_id(RoleId),
    get_apply(RoleId, GuildId).

%% @doc find apply
-spec get_apply(RoleId :: non_neg_integer(), GuildId :: non_neg_integer()) -> [#guild_apply{}] | [].
get_apply(RoleId, GuildId) ->
    ets:lookup(apply_table(GuildId), RoleId).

%%%==================================================================
%%% Internal functions
%%%==================================================================