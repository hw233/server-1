%%%-------------------------------------------------------------------
%%% @doc
%%% module protocol read write
%%% @end
%%%-------------------------------------------------------------------
-module(protocol_script_account).
-export([main/1]).
-include("../../../include/serialize.hrl").
%%%===================================================================
%%% API
%%%===================================================================
main([]) ->
    code:add_path(filename:dirname(escript:script_name()) ++ "/../../../beam/"),
    Protocol = #protocol{erl = File} = protocol(),
    console:stacktrace(catch protocol_maker:start([{File, Protocol}]));
main(_) ->
    io:format("invail argument~n").

%%%===================================================================
%%% protocol config
%%%===================================================================
protocol() ->
    #protocol{
        name = 100,
        erl = "src/module/account/account_protocol.erl",
        includes = [],
        io = [
            #io{
                name = 10000,
                comment = "HeartBeat",
                read = [],
                write = []
            },
            #io{
                name = 10001,
                comment = "Login",
                read = [
                    #u16{name = server_id},       %% server id
                    #bst{name = name}             %% username
                ],
                write = [
                    #u8{name = result}            %% login result
                ]
            },
            #io{
                name = 10002,
                comment = "Create Account",
                read = [
                    #u16{name = server_id},       %% ServerId
                    #u8{name = sex},              %% Sex
                    #u8{name = career},           %% Career
                    #u16{name = agent_id},        %% AgentId
                    #bst{name = name},            %% Name
                    #bst{name = nick},            %% Nick
                    #bst{name = device},          %% Device
                    #bst{name = mac},             %% Mac
                    #bst{name = device_type}      %% DeviceType
                ],
                write = []
            },
            #io{
                name = 10003,
                comment = "Select Account",
                read = [
                    #u16{name = server_id},       %% ServerId
                    #u64{name = id},              %% Id
                    #bst{name = name}             %% Name
                ],
                write = []
            }
        ]
    }.
