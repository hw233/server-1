%%%-------------------------------------------------------------------
%%% @doc
%%% module net supervisor, to start process and monitor it(for io)
%%% @end
%%%-------------------------------------------------------------------
-module(net_supervisor).
-behaviour(supervisor).
%% API
-export([start_child/1, start_link/0]).
%% supervisor callbacks
-export([init/1]).
%%%===================================================================
%%% API
%%%===================================================================
%% @doc start child
start_child(ChildSpec) ->
    supervisor:start_child(?MODULE, ChildSpec).

%% @doc start supervisor
start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).
%%%===================================================================
%%% supervisor callbacks
%%%===================================================================
init([]) ->
    {ok, {{one_for_one, 3, 10},[]}}.
%%%===================================================================
%%% Internal functions
%%%===================================================================