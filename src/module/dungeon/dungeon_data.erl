-module(dungeon_data).
-compile(nowarn_export_all).
-compile(export_all).
-include("dungeon.hrl").


get(1) ->
    #dungeon_data{dungeon_id = 1, type = 1, event = event_dungeon_passed, condition = [{level,10}], cost = [{100004,100}], day_number = [{0,1},{1,2},{2,3},{3,4},{4,5},{5,6}], buy_number = [{0,1,100},{1,2,200},{2,3,300},{3,4,400},{4,5,500},{5,6,600}], module = dungeon_map, function = start, map_id = 100001, monsters = [{1,10},{1,20},{1,10},{1,20},{2,1}], boss = [], time = 600, award = [{100005,100}], name = <<"经验副本"/utf8>>, description = <<"经验副本"/utf8>>};
get(2) ->
    #dungeon_data{dungeon_id = 2, type = 1, event = event_dungeon_passed, condition = [{level,20}], cost = [{100004,200}], day_number = [{0,1},{1,2},{2,3},{3,4},{4,5},{5,6}], buy_number = [{0,1,100},{1,2,200},{2,3,300},{3,4,400},{4,5,500},{5,6,600}], module = dungeon_map, function = start, map_id = 100002, monsters = [{1,10},{1,20},{1,10},{1,20},{2,1}], boss = [], time = 600, award = [{100005,200}], name = <<"经验副本"/utf8>>, description = <<"经验副本"/utf8>>};
get(3) ->
    #dungeon_data{dungeon_id = 3, type = 1, event = event_dungeon_passed, condition = [{level,30}], cost = [{100004,300}], day_number = [{0,1},{1,2},{2,3},{3,4},{4,5},{5,6}], buy_number = [{0,1,100},{1,2,200},{2,3,300},{3,4,400},{4,5,500},{5,6,600}], module = dungeon_map, function = start, map_id = 100003, monsters = [{1,10},{1,20},{1,10},{1,20},{2,1}], boss = [], time = 600, award = [{100005,300}], name = <<"经验副本"/utf8>>, description = <<"经验副本"/utf8>>};
get(4) ->
    #dungeon_data{dungeon_id = 4, type = 2, event = event_dungeon_passed, condition = [{level,10}], cost = [{100004,100}], day_number = [{0,1},{1,2},{2,3},{3,4},{4,5},{5,6}], buy_number = [{0,1,100},{1,2,200},{2,3,300},{3,4,400},{4,5,500},{5,6,600}], module = dungeon_map, function = start, map_id = 200001, monsters = [{1,10},{1,20},{1,10},{1,20},{2,1}], boss = [], time = 600, award = [{100003,100}], name = <<"铜币副本"/utf8>>, description = <<"铜币副本"/utf8>>};
get(5) ->
    #dungeon_data{dungeon_id = 5, type = 2, event = event_dungeon_passed, condition = [{level,20}], cost = [{100004,200}], day_number = [{0,1},{1,2},{2,3},{3,4},{4,5},{5,6}], buy_number = [{0,1,100},{1,2,200},{2,3,300},{3,4,400},{4,5,500},{5,6,600}], module = dungeon_map, function = start, map_id = 200002, monsters = [{1,10},{1,20},{1,10},{1,20},{2,1}], boss = [], time = 600, award = [{100003,200}], name = <<"铜币副本"/utf8>>, description = <<"铜币副本"/utf8>>};
get(6) ->
    #dungeon_data{dungeon_id = 6, type = 2, event = event_dungeon_passed, condition = [{level,30}], cost = [{100004,300}], day_number = [{0,1},{1,2},{2,3},{3,4},{4,5},{5,6}], buy_number = [{0,1,100},{1,2,200},{2,3,300},{3,4,400},{4,5,500},{5,6,600}], module = dungeon_map, function = start, map_id = 200003, monsters = [{1,10},{1,20},{1,10},{1,20},{2,1}], boss = [], time = 600, award = [{100003,300}], name = <<"铜币副本"/utf8>>, description = <<"铜币副本"/utf8>>};
get(_) ->
    [].

