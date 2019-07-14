-module(map_data).
-compile(nowarn_export_all).
-compile(export_all).
-include("map.hrl").


get(100000) ->
    #data_map{
        map_id = 100000,
        type = full,
        monsters = [1],
        enter_point = [{30,30}]
    };
get(_) -> 
    [].
