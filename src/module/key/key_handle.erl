%%%-------------------------------------------------------------------
%%% @doc
%%% module key handle
%%% @end
%%%-------------------------------------------------------------------
-module(key_handle).
%% export API functions
-export([handle/3]).
-include("protocol.hrl").

%%%===================================================================
%%% API
%%%===================================================================
%% @doc 领取奖励
handle(?CMD_KEY_AWARD, User, [Key]) ->
    case key_server:award(User, Key) of
        {ok, NewUser} ->
            {reply, 1, NewUser};
        {error, Code} ->
            {reply, Code};
        _ ->
            skip
    end;

%% @doc 容错
handle(Protocol, _User, Data) ->
    {error, Protocol, Data}.


