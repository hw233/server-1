%%%-------------------------------------------------------------------
%%% @doc
%%% module chat
%%% @end
%%%-------------------------------------------------------------------
-module(chat).
%% API
-export([world/2, guild/3, private/3]).
%% Includes
-include("common.hrl").
-include("user.hrl").
-include("player.hrl").
-include("protocol.hrl").

%%%===================================================================
%%% API
%%%===================================================================
%% @doc 世界
-spec world(User :: #user{}, Msg :: binary()) -> ok | error().
world(User = #user{id = UserId, name = Name}, Msg) ->
    case player_condition:check(User, [{level, data_parameter:get(chat_level), 2}, {chat_cd, 30, 3}]) of
        ok ->
            {ok, Data} = player_route:write(?CMD_CHAT_WORLD, [UserId, Name, Msg]),
            player_manager:broadcast(Data),
            ok;
        Error ->
            Error
    end.

%% @doc 公会
-spec guild(User :: #user{}, GuildId :: non_neg_integer(), Msg :: binary()) -> ok | error().
guild(User = #user{id = UserId, name = Name}, GuildId, Msg) ->
    case player_condition:check(User, [{level, data_parameter:get(chat_level), 2}, {ne, GuildId, 0, 3}, {chat_cd, 30, 4}]) of
        ok ->
            {ok, Data} = player_route:write(?CMD_CHAT_GUILD, [UserId, Name, Msg]),
            guild:broadcast(GuildId, Data),
            ok;
        Error ->
            Error
    end.

%% @doc 私聊
-spec private(User :: #user{}, ReceiverId :: non_neg_integer(), Msg :: binary()) -> ok | error().
private(User = #user{id = UserId, name = Name}, ReceiverId, Msg) ->
    case player_condition:check(User, [{level, data_parameter:get(chat_level), 2}]) of
        ok when UserId =/= ReceiverId ->
            case process:sender_pid(ReceiverId) of
                Pid when is_pid(Pid) ->
                    player_sender:send(Pid, ?CMD_CHAT_PRIVATE, [UserId, Name, Msg]),
                    ok;
                _ ->
                    {error, 3}
            end;
        Error ->
            Error
    end.
%%%===================================================================
%%% Internal functions
%%%===================================================================