%%%-------------------------------------------------------------------
%%% @doc
%%% module protocol read write
%%% @end
%%%-------------------------------------------------------------------
-module(protocol_script_shop).
-export([main/1]).
-include("../../../include/serialize.hrl").
-include("../../../include/shop.hrl").
%%%===================================================================
%%% API functions
%%%===================================================================
main([]) ->
    code:add_path(filename:dirname(escript:script_name()) ++ "/../../../beam/"),
    io:format("~p~n", [catch protocol_maker:start(protocol())]);
main(_) ->
    io:format("invalid argument~n").

%%%===================================================================
%%% protocol config
%%%===================================================================
protocol() ->
    [#protocol{
        number = 113,
        handler = "src/module/shop/shop_handler.erl",
        erl = "src/module/shop/shop_protocol.erl",
        js = "script/make/protocol/js/ShopProtocol.js",
        lua = "script/make/protocol/lua/ShopProtocol.lua",
        includes = ["shop.hrl"],
        io = [
            #io{
                protocol = 11301,
                comment = "已购列表",
                handler = #handler{module = shop, function = query},
                read = [],
                write = [
                    #list{name = list, comment = "已购买列表", explain = #shop{
                        shop_id = #u32{comment = "商店ID"},
                        number = #u16{comment = "数量"}
                    }}
                ]
            },
            #io{
                protocol = 11302,
                comment = "购买",
                handler = #handler{module = shop, function = buy},
                read = [
                    #u32{name = shop_id, comment = "商店ID"},
                    #u16{name = number, comment = "数量"}
                ],
                write = [
                    #rst{name = result, comment = "结果"}
                ]
            }
        ]
    }].
