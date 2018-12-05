%%%-------------------------------------------------------------------
%%% @doc
%%% module account handle
%%% @end
%%%-------------------------------------------------------------------
-module(guild_handle).
%% export API functions
-export([handle/3]).
-include("protocol.hrl").

%%%===================================================================
%%% API
%%%===================================================================
%% @doc 创建帮派
handle(?PP_GUILD_CREATE, User, [Type, Name]) ->
    case guild_server:create(User, Type, Name) of
        {update, NewUser} ->
            {update, NewUser};
        Error ->
            {reply, Error}
    end;

%% @doc 容错
handle(_, State, Data) ->
    account:packet_speed(State, Data).

