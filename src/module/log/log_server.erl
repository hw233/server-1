%%%------------------------------------------------------------------
%%% @doc
%%% module log server
%%% @end
%%%------------------------------------------------------------------
-module(log_server).
-behaviour(gen_server).
%% API
-export([log/2]).
-export([start/0, start_link/0]).
%% gen_server callbacks
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).
%% Includes
-include("common.hrl").
%%%==================================================================
%%% API functions
%%%==================================================================
%% @doc start
-spec start() -> {ok, Pid :: pid()} | {error, term()}.
start() ->
    process:start(?MODULE).

%% @doc server start
-spec start_link() -> {ok, Pid :: pid()} | {error, term()}.
start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

%% @doc log
-spec log(Type :: atom(), Data :: term()) -> ok.
log(Type, Data) ->
    gen_server:cast(?MODULE, {log, Type, Data}).
%%%==================================================================
%%% gen_server callbacks
%%%==================================================================
init([]) ->
    process_flag(trap_exit, true),
    %% next time loop
    erlang:send_after(?MINUTE_SECONDS * 1000, self(), loop),
    case time:day_hour(3) - time:ts() of
        Time when Time > 0 ->
            %% today
            erlang:send_after(Time * 1000, self(), clean);
        Time ->
            %% tomorrow
            erlang:send_after((Time + ?DAY_SECONDS) * 1000, self(), clean)
    end,
    {ok, []}.

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_cast({log, Type, Data}, State) ->
    %% cache data
    NewList = listing:key_append(Type, State, Data),
    {noreply, NewList};
handle_cast(_Request, State) ->
    {noreply, State}.

handle_info(loop, State) ->
    %% next time loop
    erlang:send_after(?MINUTE_SECONDS * 1000, self(), loop),
    %% save data
    save(State),
    {noreply, []};
handle_info(clean, State) ->
    %% next time clean
    erlang:send_after(?DAY_SECONDS * 1000, self(), clean),
    %% clean data
    clean(log_sql_clean:sql()),
    erlang:garbage_collect(),
    {noreply, State};
handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, State) ->
    %% save data when terminate
    save(State),
    {ok, []}.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%%%==================================================================
%%% Internal functions
%%%==================================================================
%% save all cache data
save([]) ->
    ok;
save([{Type, DataList} | T]) ->
    try
        %% save data
        sql:insert(parser:collect(lists:reverse(DataList), log_sql:sql(Type)))
    catch ?EXCEPTION(_Class, Reason, Stacktrace) ->
        ?STACKTRACE(Reason, ?GET_STACKTRACE(Stacktrace))
    end,
    save(T).

%% clean all expire data
clean([]) ->
    ok;
clean([{Sql, ExpireTime} | T]) ->
    try
        %% save data
        sql:delete(parser:format(Sql, [time:zero() - ExpireTime]))
    catch ?EXCEPTION(_Class, Reason, Stacktrace) ->
        ?STACKTRACE(Reason, ?GET_STACKTRACE(Stacktrace))
    end,
    clean(T).
