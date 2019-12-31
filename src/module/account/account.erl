%%%------------------------------------------------------------------
%%% @doc
%%% module account/user control
%%% @end
%%%------------------------------------------------------------------
-module(account).
%% API
-export([create/10, login/3, logout/3, heartbeat/1, handle_packet/2]).
%% Includes
-include("socket.hrl").
-include("user.hrl").
-include("online.hrl").
-include("role.hrl").
-include("protocol.hrl").
%%%==================================================================
%%% API functions
%%%==================================================================
%% @doc create account
-spec create(State :: #client{}, Account :: binary(), RoleName :: binary(), ServerId :: non_neg_integer(), Sex :: non_neg_integer(), Classes :: non_neg_integer(), ChannelId :: non_neg_integer(), DeviceId :: binary(), Mac :: binary(), DeviceType :: binary()) -> {ok, #client{}}.
create(State, Account, RoleName, ServerId, Sex, Classes, ChannelId, DeviceId, Mac, DeviceType) ->
    Sql = io_lib:format("SELECT `role_id` FROM `role` WHERE `account` = '~s'", [Account]),
    case word:validate(RoleName, [{length, 1, 6}, sensitive, {sql, Sql}]) of
        true ->
            Role = #role{
                role_name = RoleName,
                type = ?SERVER_STATE_NORMAL,
                online = 1,
                sex = Sex,
                classes = Classes,
                server_id = ServerId,
                channel_id = ChannelId,
                device_id = DeviceId,
                device_type = DeviceType,
                mac = Mac
            },
            role_sql:insert(Role),
            {ok, CreateResponse} = user_router:write(?PROTOCOL_ACCOUNT_CREATE, ok);
        {false, length, _} ->
            {ok, CreateResponse} = user_router:write(?PROTOCOL_ACCOUNT_CREATE, invalid_length);
        {false, asn1, _} ->
            {ok, CreateResponse} = user_router:write(?PROTOCOL_ACCOUNT_CREATE, invalid_utf8_charset);
        {false, sensitive} ->
            {ok, CreateResponse} = user_router:write(?PROTOCOL_ACCOUNT_CREATE, sensitive);
        {false, duplicate} ->
            {ok, CreateResponse} = user_router:write(?PROTOCOL_ACCOUNT_CREATE, duplicate)
    end,
    sender:send(State, CreateResponse),
    {ok, State}.

%% @doc account login
-spec login(State :: #client{}, ServerId :: non_neg_integer(), Account :: binary()) -> {ok, #client{}} | {stop, term(), #client{}}.
login(State, ServerId, Account) ->
    ThisServerId = config:server_id(),
    %% check account/infant/blacklist etc..
    case sql:select(io_lib:format("SELECT `role_id` FROM `role` WHERE `account` = '~s'", [Account])) of
        [[RoleId]] when ServerId == ThisServerId ->
            %% only one match user id
            %% start user process check reconnect first
            check_user_type(State, RoleId);
        [[_]] ->
            %% failed result reply
            {ok, LoginResponse} = user_router:write(?PROTOCOL_ACCOUNT_LOGIN, server_id_not_match),
            sender:send(State, LoginResponse),
            {stop, normal, State};
        _ ->
            %% failed result reply
            {ok, LoginResponse} = user_router:write(?PROTOCOL_ACCOUNT_LOGIN, no_such_name),
            sender:send(State, LoginResponse),
            {stop, normal, State}
    end.

%% @doc account logout
-spec logout(State :: #client{}, ServerId :: non_neg_integer(), Account :: binary()) -> {ok, #client{}} | {stop, term(), #client{}}.
logout(State, ServerId, Account) ->
    ThisServerId = config:server_id(),
    %% check account/infant/blacklist etc..
    case sql:select(io_lib:format("SELECT `role_id` FROM `role` WHERE `account` = '~s'", [Account])) of
        [[RoleId]] when ServerId == ThisServerId ->
            %% only one match user id
            user_server:cast(RoleId, logout),
            {stop, normal, State};
        [[_]] ->
            %% failed result reply
            {ok, LoginResponse} = user_router:write(?PROTOCOL_ACCOUNT_LOGIN, server_id_not_match),
            sender:send(State, LoginResponse),
            {stop, normal, State};
        _ ->
            %% failed result reply
            {ok, LoginResponse} = user_router:write(?PROTOCOL_ACCOUNT_LOGIN, no_such_name),
            sender:send(State, LoginResponse),
            {stop, normal, State}
    end.

%% @doc heart beat
-spec heartbeat(State :: #client{}) -> {ok, #client{}} | {stop, term(), #client{}}.
heartbeat(State = #client{role_pid = Pid}) ->
    %% heart packet check
    Now = time:ts(),
    case Now - State#client.heart_time < 30 of
        true ->
            gen_server:cast(Pid, {packet_fast_error, heartbeat}),
            {stop, heart_packet_fast, State};
        _ ->
            NewState = State#client{heart_time = Now},
            {ok, NewState}
    end.

%% @doc handle packet and packet speed control
-spec handle_packet(State :: #client{}, Data :: [term()]) -> {ok, #client{}} | {stop, term(), #client{}}.
handle_packet(State = #client{protocol = Protocol, role_pid = Pid, total_packet = Total, last_time = LastTime}, Data) ->
    Now = time:ts(),
    case 120 < Total of
        true when Now < LastTime + 4 ->
            %% 4 seconds 120 packet
            gen_server:cast(Pid, {packet_fast_error, normal}),
            {stop, normal_packet_fast, State};
        true ->
            %% normal game data
            catch user_server:socket_event(Pid, Protocol, Data),
            {ok, State#client{total_packet = 0, last_time = Now}};
        false ->
            %% normal game data
            catch user_server:socket_event(Pid, Protocol, Data),
            {ok, State#client{total_packet = Total + 1, last_time = Now}}
    end.

%%%==================================================================
%%% Internal functions
%%%==================================================================
check_user_type(State = #client{}, RoleId) ->
    %% control server open or not
    case catch user_manager:get_server_state() of
        {'EXIT', _} ->
            {ok, LoginResponse} = user_router:write(?PROTOCOL_ACCOUNT_LOGIN, refuse),
            sender:send(State, LoginResponse),
            {stop, normal, State};
        ?SERVER_STATE_REFUSE ->
            {ok, LoginResponse} = user_router:write(?PROTOCOL_ACCOUNT_LOGIN, refuse),
            sender:send(State, LoginResponse),
            {stop, normal, State};
        ServerState ->
            case sql:select(io_lib:format("SELECT 1 FROM `role` WHERE `role_id` = '~p' and `type` >= '~w'", [RoleId, ServerState])) of
                [] ->
                    {ok, LoginResponse} = user_router:write(?PROTOCOL_ACCOUNT_LOGIN, privilege_not_enough),
                    sender:send(State, LoginResponse),
                    {stop, normal, State};
                _ ->
                    start_login(State, RoleId)
            end
    end.

%% common login
start_login(State = #client{socket = Socket, socket_type = SocketType, protocol_type = ProtocolType}, RoleId) ->
    %% new login
    case user_server:start(RoleId, self(), Socket, SocketType, ProtocolType) of
        {ok, Pid} ->
            {ok, LoginResponse} = user_router:write(?PROTOCOL_ACCOUNT_LOGIN, ok),
            sender:send(State, LoginResponse),
            {ok, State#client{login_state = login, role_id = RoleId, role_pid = Pid}};
        {error, {already_started, Pid}} ->
            %% replace, send response and stop old receiver
            {ok, DuplicateLoginResponse} = user_router:write(?PROTOCOL_ACCOUNT_LOGIN, duplicate),
            gen_server:cast(user_manager:lookup_element(RoleId, #online.receiver_pid), {stop, DuplicateLoginResponse}),
            %% reconnect
            gen_server:cast(Pid, {reconnect, self(), Socket, SocketType, ProtocolType}),
            {ok, LoginResponse} = user_router:write(?PROTOCOL_ACCOUNT_LOGIN, ok),
            sender:send(State, LoginResponse),
            {ok, State#client{login_state = login, role_id = RoleId, role_pid = Pid}};
        Error ->
            {stop, Error, State}
    end.
