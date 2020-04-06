
%%%------------------------------------------------------------------
%%% @doc
%%% module game master
%%% @end
%%%------------------------------------------------------------------
-module(master).
%% API
-export([treat/2]).
%% Includes
-include("socket.hrl").
%%%==================================================================
%%% API functions
%%%==================================================================
%% @doc treat game master command
-spec treat(State :: #client{}, Http :: #http{}) -> ok.
treat(State, Http) ->
    Command = http:get_header_field(<<"Command">>, Http),
    Result = execute_command(State, Http, Command),
    Response = [
        <<"HTTP/">>, http:get_version(Http), <<" 200 OK\r\n">>,
        <<"Connection: Close\r\n">>,
        <<"Date: ">>, list_to_binary(httpd_util:rfc1123_date()), <<"\r\n">>,
        <<"Content-Length: ">>, integer_to_binary(byte_size(Result)), <<"\r\n">>,
        <<"\r\n">>, Result
    ],
    sender:response(State, list_to_binary(Response)),
    ok.

%%%==================================================================
%%% Internal functions
%%%==================================================================
execute_command(_State, _Http, <<"notice">>) ->
    <<"ok">>;
execute_command(_State, _Http, <<"mail">>) ->
    <<"ok">>;
execute_command(_State, _Http, <<"ban_chat">>) ->
    <<"ok">>;
execute_command(_State, _Http, <<"ban_login">>) ->
    <<"ok">>;
execute_command(_State, _Http, <<"mirror">>) ->
    <<"ok">>;
execute_command(_State, _Http, <<"free_chat">>) ->
    <<"ok">>;
execute_command(_State, _Http, <<"free_login">>) ->
    <<"ok">>;
execute_command(_State, _Http, <<"free_mirror">>) ->
    <<"ok">>;
execute_command(_State, _Http, <<"recharge">>) ->
    %% recharge notify
    %% user_server:apply_cast(RoleId, recharge, charge, [RechargeNo]),
    <<"ok">>;
execute_command(_State, _Http, Command) ->
    <<"Unknown Command: ", Command/binary>>.
