%%%-------------------------------------------------------------------
%%% @doc
%%% module user data cleaner
%%% @end
%%%-------------------------------------------------------------------
-module(user_cleaner).
%% API
-export([clean/1]).
-export([clean_loop/3]).
%% Includes
-include("user.hrl").
%%%===================================================================
%%% API
%%%===================================================================
%% @doc save data on role logout
clean(User) ->
    Size = tuple_size(User),
    clean_loop(2, Size, User).

%% @doc save loop
clean_loop(Size, Size, User) ->
    do_clean(Size, User);
clean_loop(Position, Size, User) ->
    NewUser = do_clean(Position, User),
    clean_loop(Position + 1, Size, NewUser).
%%%===================================================================
%%% Internal functions
%%%===================================================================
%% clear per role's data
do_clean(#user.shop, User) ->
    shop:clean(User);
do_clean(_, User) ->
    User.