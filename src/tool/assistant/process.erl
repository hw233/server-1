%%%-------------------------------------------------------------------
%%% @doc
%%% module process
%%% @end
%%%-------------------------------------------------------------------
-module(process).
%% API
-export([start/1, start/2, start/3, pid/1, pid/2, alive/1]).
-export([call/2, call/3, cast/2, cast/3, info/2, info/3]).
-export([player_name/1, sender_name/1]).
-export([player_pid/1, sender_pid/1]).
%%%===================================================================
%%% API
%%%===================================================================
%% @doc server start
-spec start(Name :: atom()) -> {ok, Pid :: pid()} | {error, term()}.
start(Name) ->
    start(Name, []).
-spec start(Name :: atom(), Args :: [term()]) -> {ok, Pid :: pid()} | {error, term()}.
start(Name, Args) ->
    start(Name, Name, Args).
-spec start(Name :: atom(), Module :: module(), Args :: [term()]) -> {ok, Pid :: pid()} | {error, term()}.
start(Name, Module, Args) ->
    %% kill(force termination) worker server after 60 seconds
    ChildSpec = {Name, {Module, start_link, Args}, permanent, 60000, worker, [Name]},
    service_supervisor:start_child(ChildSpec).

%% @doc process pid
-spec pid(Node :: local | center | big_world, Name :: atom()) -> Pid :: pid() | term().
pid(local, Name) ->
    pid(Name);
pid(Node, Name) ->
    node_server:call_center(Node, ?MODULE, pid, [Name]).

%% @doc process pid
-spec pid(Name :: atom() | {local, atom()} | {global, atom()}) -> Pid :: pid() | undefined.
pid(Name) ->
    case where(Name) of
        Pid when is_pid(Pid) ->
            Pid;
        _ ->
            case start(Name) of
                {ok, Pid} ->
                    Pid;
                _ ->
                    undefined
            end
    end.

%% @doc process is alive
-spec alive(Pid :: pid()) -> true | false | term().
alive(Pid) when is_pid(Pid) andalso node(Pid) =:= node() ->
    erlang:is_process_alive(Pid);
alive(Pid) when is_pid(Pid) ->
    case rpc:call(node(Pid), erlang, is_process_alive, [Pid]) of
        {badrpc, _Reason}  ->
            false;
        Result ->
            Result
    end.

%% @doc call
-spec call(Name :: atom(), Request :: term()) -> Result :: term().
call(Name, Request) ->
    call(local, Name, Request).
-spec call(Node :: atom(), Name :: atom(), Request :: term()) -> Result :: term().
call(Node, Name, Request) ->
    gen_server:call(pid(Node, Name), Request).

%% @doc cast
-spec cast(Name :: atom(), Request :: term()) -> ok.
cast(Name, Request) ->
    cast(local, Name, Request).
-spec cast(Node :: atom(), Name :: atom(), Request :: term()) -> ok.
cast(Node, Name, Request) ->
    gen_server:cast(pid(Node, Name), Request).

%% @doc info
-spec info(Name :: atom(), Request :: term()) -> Request :: term().
info(Name, Request) ->
    info(local, Name, Request).
-spec info(Node :: atom(), Name :: atom(), Request :: term()) -> Request :: term().
info(Node, Name, Request) ->
    erlang:send(pid(Node, Name), Request).

%% @doc where
-spec where(Name :: term()) -> Pid :: pid() | undefined.
where({local, Name}) ->
    erlang:whereis(Name);
where({global, Name}) ->
    global:whereis_name(Name);
where(Name) ->
    erlang:whereis(Name).

%% @doc 玩家进程名
-spec player_name(PlayerId :: non_neg_integer()) -> atom().
player_name(PlayerId) ->
    type:to_atom(lists:concat([player_server_, PlayerId])).

%% @doc 玩家写消息进程名
-spec sender_name(PlayerId :: non_neg_integer()) -> atom().
sender_name(PlayerId) ->
    type:to_atom(lists:concat([player_sender_, PlayerId])).

%% @doc 获取玩家进程Pid
-spec player_pid(PlayerId :: non_neg_integer()) -> Pid :: pid() | undefined.
player_pid(PlayerId) ->
    where(player_name(PlayerId)).

%% @doc 获取玩家写消息进程Pid
-spec sender_pid(PlayerId :: non_neg_integer()) -> Pid :: pid() | undefined.
sender_pid(PlayerId) ->
    where(sender_name(PlayerId)).
