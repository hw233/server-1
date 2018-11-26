%%%-------------------------------------------------------------------
%%% @doc
%%% module log server
%%% @end
%%%-------------------------------------------------------------------
-module(log_server).
-behaviour(gen_server).
%% export function
-export([start_link/0]).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).
-export([log/1]).
-include("common.hrl").
%%%===================================================================
%%% API
%%%===================================================================
%% @doc start
start_link() ->
	gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

%% @doc log
log(Message) ->
	catch gen_server:cast(?MODULE, {log, Message}).
%%%===================================================================
%%% gen_server callbacks
%%%===================================================================
init([]) ->
	{ok, []}.
handle_call(_Request, _From, State) ->
	{reply, ok, State}.
handle_cast({log, Log}, State) ->
	%% cache data
	{noreply, [Log | State]};
handle_cast(_Request, State) ->
	{noreply, State}.
handle_info(loop, State) ->
	erlang:send_after(?MINUTE_SECONDS * 3 * 1000, self(), loop),
	save(State),
	%% save data loop
	{noreply, State};
handle_info(_Info, State) ->
	{noreply, State}.
terminate(_Reason, State) ->
	%% save data when terminate
	save(State),
	ok.
code_change(_OldVsn, State, _Extra) ->
	{ok, State}.

%%%===================================================================
%%% Internal functions
%%%===================================================================
%% save all cache data
save(List) ->
	[do(X) || X <- List],
	ok.

%% do not delete this comment
%% match target

do([log_player | T]) ->
    sql:insert(?POOL, log_player, io_lib:format("INSERT INTO (`user_id`, `exp`, `time`) VALUES ('~w', '~w', '~w');", T));
do(_) ->
    ok.