%%%------------------------------------------------------------------
%%% @doc
%%% module rank server
%%% @end
%%%------------------------------------------------------------------
-module(rank_server).
-behaviour(gen_server).
%% API
-export([update/2, name/1, rank/1]).
-export([query/1]).
-export([start_all/1, start/2, start_link/2]).
%% gen_server callbacks
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).
%% Includes
-include("common.hrl").
-include("user.hrl").
-include("rank.hrl").
-record(state, {sorter, name, cache = [], node, tick = 1}).
%%%==================================================================
%%% API functions
%%%==================================================================
%% @doc update rank
-spec update(Type :: non_neg_integer(), Data :: #rank{} | [#rank{}]) -> ok.
update(Type, Data) ->
    process:cast(name(Type), {update, Data}).

%% @doc rank server name
-spec name(Type :: non_neg_integer()) -> atom().
name(Type) ->
    type:to_atom(lists:concat([?MODULE, "_", Type])).

%% @doc rank data
-spec rank(Type :: non_neg_integer()) -> [#rank{}].
rank(Type) ->
    Name = name(Type),
    sorter:data(Name).

%% @doc query
-spec query(Type :: non_neg_integer()) -> ok().
query(Type) ->
    {ok, [rank_server:rank(Type)]}.

%% @doc start all
-spec start_all(Node :: atom()) -> ok.
start_all(Node) ->
    %% start all rank server, one type per server
    Length = length(?RANK_TYPE_LIST),
    [{ok, _} = start(Type, [Node, Type, Length]) || Type <- ?RANK_TYPE_LIST],
    ok.

%% @doc start one
-spec start(Name :: atom(), Args :: [term()]) -> {ok, Pid :: pid()} | {error, term()}.
start(Name, Args) ->
    FullName = name(Name),
    process:start(FullName, ?MODULE, [FullName, Args]).

%% @doc server start
-spec start_link(Name :: atom(), Args :: [term()]) -> {ok, Pid :: pid()} | {error, term()}.
start_link(Name, Args) ->
    gen_server:start_link({local, Name}, ?MODULE, Args, []).
%%%==================================================================
%%% gen_server callbacks
%%%==================================================================
init([local, Type, Length]) ->
    process_flag(trap_exit, true),
    %% construct name with type
    Name = name(Type),
    %% load from database
    Data = rank_sql:select(Type),
    %% transform rank record
    F = fun(I = #rank{digest = Digest, extra = Extra, other = Other}) -> I#rank{digest = parser:to_term(Digest), extra = parser:to_term(Extra), other = parser:to_term(Other), flag = 0} end,
    RankList = parser:convert(Data, rank, F),
    %% make sorter with origin data, data select from database will sort with key(rank field)
    Sorter = sorter:new(Name, share, replace, 100, #rank.key, #rank.value, #rank.time, #rank.rank, RankList),
    %% random start update loop time
    Time = randomness:rand(round((Type - 1) * 60 / Length) , round(Type  * 60 / Length)),
    erlang:send_after((?MINUTE_SECONDS + Time) * 1000, self(), loop),
    {ok, #state{sorter = Sorter, name = Name, node = local}};
init([center, Type, _]) ->
    %% construct name with type
    Name = name(Type),
    %% center node only show rank data, not save data
    Sorter = sorter:new(Name, share, replace, 100, #rank.key, #rank.value, #rank.time, #rank.rank, []),
    {ok, #state{sorter = Sorter, name = Name, node = center}};
init([world, Type, _]) ->
    %% construct name with type
    Name = name(Type),
    %% world node only show rank data, not save data
    Sorter = sorter:new(Name, share, replace, 100, #rank.key, #rank.value, #rank.time, #rank.rank, []),
    {ok, #state{sorter = Sorter, name = Name, node = world}};
init(_) ->
    {ok, #state{}}.

handle_call(Request, From, State) ->
    try
        do_call(Request, From, State)
    catch ?EXCEPTION(_Class, Reason, Stacktrace) ->
        ?STACKTRACE(Reason, ?GET_STACKTRACE(Stacktrace)),
        {reply, ok, State}
    end.

handle_cast(Request, State) ->
    try
        do_cast(Request, State)
    catch ?EXCEPTION(_Class, Reason, Stacktrace) ->
        ?STACKTRACE(Reason, ?GET_STACKTRACE(Stacktrace)),
        {noreply, State}
    end.

handle_info(Info, State) ->
    try
        do_info(Info, State)
    catch ?EXCEPTION(_Class, Reason, Stacktrace) ->
        ?STACKTRACE(Reason, ?GET_STACKTRACE(Stacktrace)),
        {noreply, State}
    end.

terminate(_Reason, #state{sorter = Sorter, node = local}) ->
    try
        %% update data when server stop
        Data = sorter:data(Sorter),
        rank_sql:insert_update(Data)
    catch ?EXCEPTION(_Class, Reason, Stacktrace) ->
        ?STACKTRACE(Reason, ?GET_STACKTRACE(Stacktrace))
    end;
terminate(_Reason, State) ->
    {ok, State}.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%%%==================================================================
%%% Internal functions
%%%==================================================================
do_call(_Info, _From, State) ->
    {reply, ok, State}.

do_cast({update, Data = [_ | _]}, State = #state{cache = Cache, node = local}) ->
    %% update online role info cache
    New = lists:ukeymerge(#rank.key, Data, Cache),
    {noreply, State#state{cache = New}};
do_cast({update, Data = #rank{key = Key}}, State = #state{cache = Cache, node = local}) ->
    %% update online role info cache
    New = lists:keystore(Key, #rank.key, Cache, Data),
    {noreply, State#state{cache = New}};
do_cast({update, Data}, State = #state{sorter = Sorter, name = Name, node = center}) ->
    %% update first
    sorter:update(Data, Sorter),
    %% get rank list data
    RankList = sorter:data(Sorter),
    %% sync to world
    process:cast(world, Name, {update, RankList}),
    {noreply, State};
do_cast({update, Data}, State = #state{sorter = Sorter, node = world}) ->
    %% update directly
    sorter:update(Data, Sorter),
    {noreply, State};
do_cast(_Info, State) ->
    {noreply, State}.

do_info(loop, State = #state{sorter = Sorter, name = Name, cache = Cache, node = local, tick = Tick}) ->
    erlang:send_after(?MINUTE_SECONDS * 1000, self(), loop),
    %% update cache
    sorter:update(Cache, Sorter),
    %% get rank list data
    Data = sorter:data(Sorter),
    %% sync to database, 3 minutes
    _ = Tick rem 3 == 0 andalso rank_sql:insert_update(Data) =/= [],
    %% sync to center
    process:cast(center, Name, {update, Data}),
    {noreply, State#state{cache = [], tick = Tick + 1}};
do_info(_Info, State) ->
    {noreply, State}.
