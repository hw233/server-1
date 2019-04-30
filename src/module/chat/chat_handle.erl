%%%-------------------------------------------------------------------
%%% @doc
%%% module key handle
%%% @end
%%%-------------------------------------------------------------------
-module(chat_handle).
%% API
-export([handle/3]).
%% Includes
-include("user.hrl").
-include("player.hrl").
-include("protocol.hrl").

%%%===================================================================
%%% API
%%%===================================================================
%% @doc chat world
handle(?CMD_CHAT_WORLD, User, [Msg]) ->
    case chat:world(User, Msg) of
        ok ->
            ok;
        {error, Code} ->
            {reply, [Code]}
    end;

%% @doc chat guild
handle(?CMD_CHAT_GUILD, User = #user{id = Id}, [Msg]) ->
    case chat:guild(User, guild:player_guild_id(Id), Msg) of
        ok ->
            ok;
        {error, Code} ->
            {reply, [Code]}
    end;

%% @doc chat private
handle(?CMD_CHAT_PRIVATE, User, [ReceiverId, Msg]) ->
    case chat:private(User, ReceiverId, Msg) of
        ok ->
            ok;
        {error, Code} ->
            {reply, [Code]}
    end;

%% @doc 容错
handle(Protocol, _User, Data) ->
    {error, Protocol, Data}.

