%%%-------------------------------------------------------------------
%%% @doc
%%% module protocol read write
%%% @end
%%%-------------------------------------------------------------------
-module(protocol_script_buff).
-export([main/1]).
-include("../../../include/serialize.hrl").
-include("../../../include/buff.hrl").
%%%===================================================================
%%% API
%%%===================================================================
main([]) ->
    code:add_path(filename:dirname(escript:script_name()) ++ "/../../../beam/"),
    console:stacktrace(catch protocol_maker:start([protocol()]));
main(_) ->
    io:format("invail argument~n").

%%%===================================================================
%%% protocol config
%%%===================================================================
protocol() ->
    #protocol{
        name = 118,
        handler = "src/module/buff/buff_handler.erl",
        erl = "src/module/buff/buff_protocol.erl",
        json = "script/make/protocol/json/BuffProtocol.js",
        lua = "script/make/protocol/lua/BuffProtocol.lua",
        includes = ["buff.hrl"],
        io = [
            #io{
                name = 11801,
                comment = "Buff列表",
                read = [],
                write = [
                    #list{name = list, comment = "Buff列表", explain = #buff{
                        buff_id = #u32{comment = "BuffID"},
                        end_time = #u32{comment = "结束时间"},
                        overlap = #u16{comment = "叠加数量"}
                    }}
                ],
                handler = #handler{
                    module = buff,
                    function = query
                }
            }
        ]
    }.
