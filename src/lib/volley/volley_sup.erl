-module(volley_sup).
-behaviour(supervisor).
-export([start_link/0, add_pool/2, remove_pool/1]).
-export([init/1]).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

add_pool(PoolName, PoolArgs) ->
    start_link(),
    ChildSpecs = {PoolName, {volley_pool_sup, start_link, [PoolName,  PoolArgs]}, transient, infinity, supervisor, [PoolName]},
    supervisor:start_child(?MODULE, ChildSpecs).

remove_pool(PoolName) ->
    case supervisor:terminate_child(?MODULE, PoolName) of
        ok ->
            supervisor:delete_child(?MODULE, PoolName);
        Error ->
            Error
    end.

init([]) ->
    {ok, {{one_for_one, 1000, 1}, []}}.