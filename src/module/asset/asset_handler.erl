%%%-------------------------------------------------------------------
%%% @doc
%%% module asset handle
%%% @end
%%%-------------------------------------------------------------------
-module(asset_handler).
%% API
-export([handle/3]).
%% Includes
-include("user.hrl").
-include("protocol.hrl").

%%%===================================================================
%%% API
%%%===================================================================
%% asset
handle(?PROTOCOL_ASSET, #user{asset = Asset}, []) ->
    {reply, [Asset]};

%% @doc 容错
handle(Protocol, _User, Data) ->
    {error, Protocol, Data}.