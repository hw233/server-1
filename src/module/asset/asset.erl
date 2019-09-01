%%%-------------------------------------------------------------------
%%% @doc
%%% module role asset
%%% @end
%%%-------------------------------------------------------------------
-module(asset).
%% API
-export([load/1, save/1]).
-export([query/1]).
-export([add/2, cost/2]).
-export([check/2]).
-export([convert/1]).
%% Includes
-include("user.hrl").
-include("asset.hrl").
%%%===================================================================
%%% API
%%%===================================================================
%% @doc load
-spec load(User :: #user{}) -> NewUser :: #user{}.
load(User = #user{role_id = RoleId}) ->
    case parser:convert(asset_sql:select(RoleId), ?MODULE) of
        [] ->
            %% new data
            Asset = #asset{role_id = RoleId},
            asset_sql:insert(Asset);
        [Asset] ->
            Asset
    end,
    User#user{asset = Asset}.

%% @doc save
-spec save(User :: #user{}) -> NewUser :: #user{}.
save(User = #user{asset = Asset}) ->
    asset_sql:update(Asset),
    User.

%% @doc query
-spec query(User :: #user{}) -> ok().
query(#user{asset = Asset}) ->
    {ok, [Asset]}.

%% @doc only add assess
-spec add(User :: #user{}, CostList :: list()) -> {ok, NewUser :: #user{}} | {error, non_neg_integer()}.
add(User, []) ->
    {ok, User};
add(User = #user{asset = Asset = #asset{gold = Gold}}, [{gold, Add, _} | T]) ->
    add(User#user{asset = Asset#asset{gold = Gold + Add}}, T);
add(User = #user{asset = Asset = #asset{silver = Silver}}, [{silver, Add, _} | T]) ->
    add(User#user{asset = Asset#asset{silver = Silver + Add}}, T);
add(User = #user{asset = Asset = #asset{copper = Copper}}, [{copper, Add, _} | T]) ->
    add(User#user{asset = Asset#asset{copper = Copper + Add}}, T);
add(_, [{Type, _} | _]) ->
    {error, Type}.

%% @doc only check assess
-spec check(User :: #user{}, CostList :: list()) -> {ok, NewUser :: #user{}} | {error, non_neg_integer()}.
check(User = #user{asset = #asset{gold = Gold}}, [{gold, Target} | T]) when Target =< Gold ->
    check(User, T);
check(User = #user{asset = #asset{silver = Silver}}, [{silver, Target} | T]) when Target =< Silver ->
    check(User, T);
check(User = #user{asset = #asset{copper = Copper}}, [{copper, Target} | T]) when Target =< Copper ->
    check(User, T);
check(_, [{Type, _} | _]) ->
    {error, Type}.

%% @doc only cost assess
-spec cost(User :: #user{}, CostList :: list()) -> {ok, NewUser :: #user{}} | {error, non_neg_integer()}.
cost(User, []) ->
    {ok, User};
cost(User = #user{asset = Asset = #asset{gold = Gold}}, [{gold, Cost} | T]) when Cost =< Gold ->
    cost(User#user{asset = Asset#asset{gold = Gold - Cost}}, T);
cost(User = #user{asset = Asset = #asset{silver = Silver}}, [{silver, Cost} | T]) when Cost =< Silver ->
    cost(User#user{asset = Asset#asset{silver = Silver - Cost}}, T);
cost(User = #user{asset = Asset = #asset{copper = Copper}}, [{copper, Cost} | T]) when Cost =< Copper ->
    cost(User#user{asset = Asset#asset{copper = Copper - Cost}}, T);
cost(_, [{Type, _} | _]) ->
    {error, Type}.

%% @doc convert asset type to item type
-spec convert(list()) -> list().
convert(List) ->
    convert(List, []).

convert([], List) ->
    List;
convert([{Asset, Value} | T], List) ->
    convert(T, [{asset_data:get(Asset), Value, 0} | List]).

%%%===================================================================
%%% Internal functions
%%%===================================================================