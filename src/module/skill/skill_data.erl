-module(skill_data).
-compile(nowarn_export_all).
-compile(export_all).
-include("skill.hrl").


get(1) ->
    #skill_data{
        skill_id = 1,
        group_id = 1,
        type = 0,
        name = <<"普攻技能">>,
        condition = [],
        effect = [1],
        cd = 1,
        radius = 100,
        distance = 100,
        number = 1,
        buffs = [],
        before_effects = [],
        hit_effects = [],
        after_effects = [],
        description = <<"对目标造成180%的伤害">>
    };
get(2) ->
    #skill_data{
        skill_id = 2,
        group_id = 2,
        type = 0,
        name = <<"群攻技能">>,
        condition = [],
        effect = [2],
        cd = 1,
        radius = 100,
        distance = 100,
        number = 3,
        buffs = [],
        before_effects = [],
        hit_effects = [],
        after_effects = [],
        description = <<"对3个目标造成150%的伤害">>
    };
get(3) ->
    #skill_data{
        skill_id = 3,
        group_id = 3,
        type = 0,
        name = <<"增益">>,
        condition = [],
        effect = [8],
        cd = 10,
        radius = 100,
        distance = 100,
        number = 1,
        buffs = [],
        before_effects = [],
        hit_effects = [],
        after_effects = [],
        description = <<"每秒扣血，总血量万分之50">>
    };
get(_) -> 
    [].

