%%%-------------------------------------------------------------------
%%% @doc
%%% module test
%%% @end
%%%-------------------------------------------------------------------
-module(test).
-compile(nowarn_export_all).
-compile(export_all).
-include("../../../include/asset.hrl").
-include("../../../include/attribute.hrl").
-include("../../../include/auction.hrl").
-include("../../../include/buff.hrl").
-include("../../../include/common.hrl").
-include("../../../include/count.hrl").
-include("../../../include/event.hrl").
-include("../../../include/friend.hrl").
-include("../../../include/guild.hrl").
-include("../../../include/item.hrl").
-include("../../../include/key.hrl").
-include("../../../include/mail.hrl").
-include("../../../include/map.hrl").
-include("../../../include/monster.hrl").
-include("../../../include/notice.hrl").
-include("../../../include/online.hrl").
-include("../../../include/protocol.hrl").
-include("../../../include/quest.hrl").
-include("../../../include/rank.hrl").
-include("../../../include/role.hrl").
-include("../../../include/serialize.hrl").
-include("../../../include/shop.hrl").
-include("../../../include/skill.hrl").
-include("../../../include/socket.hrl").
-include("../../../include/sorter.hrl").
-include("../../../include/user.hrl").
-include("../../../include/vip.hrl").

%%%===================================================================
%%% API
%%%===================================================================
%% @doc escript entry
main(Args) ->
    io:format("~p~n", [Args]).

s(A) ->sys:get_state(erlang:whereis(A)).

%%%===================================================================
%%% map test
%%%===================================================================
t(T) -> catch ets:tab2list(T).


ms() -> s(map_100000).


%%%===================================================================
%%% console test
%%%===================================================================
ct() ->
    console:print(?MODULE, ?LINE, "~s~n", [<<"print">>]),
    console:debug(?MODULE, ?LINE, "~p~n", [<<"debug">>]),
    console:info(?MODULE, ?LINE, "~p~n", [info]),
    console:warming(?MODULE, ?LINE, "~p~n", [warming]),
    console:error(?MODULE, ?LINE, "~p~n", [error]).

%%%===================================================================
%%% User data test
%%%===================================================================
t() ->
    USER = user_loader:load(#user{role_id = 1}),
    ROLE = user_router:write(?PROTOCOL_ROLE, [USER#user.role]),
    ASSET = user_router:write(?PROTOCOL_ASSET, [USER#user.asset]),
    ITEM = user_router:write(?PROTOCOL_ITEM, [USER#user.item]),
    BAG = user_router:write(?PROTOCOL_ITEM, [USER#user.bag]),
    STORE = user_router:write(?PROTOCOL_ITEM, [USER#user.store]),
    MAIL = user_router:write(?PROTOCOL_MAIL, [USER#user.mail]),
    QUEST = user_router:write(?PROTOCOL_QUEST, [USER#user.quest]),
    SHOP = user_router:write(?PROTOCOL_SHOP, [USER#user.shop]),
    FRIEND = user_router:write(?PROTOCOL_FRIEND, [USER#user.friend]),
    BUFF = user_router:write(?PROTOCOL_BUFF, [USER#user.buff]),
    SKILL = user_router:write(?PROTOCOL_SKILL, [USER#user.skill]),
    CHAT = user_router:write(?PROTOCOL_CHAT_WORLD, [1, <<"1">>, <<"1">>]),
    RANK = user_router:write(?PROTOCOL_RANK, [rank_server:rank(1)]),

    io:format("~p~n", [USER]),
    [io:format("~p~n", [element(1, X)]) || X <- [ROLE, ASSET, ITEM, BAG, STORE, MAIL, QUEST, SHOP, FRIEND, CHAT, RANK, BUFF, SKILL]],
    USER.

r() ->
    [X || X <- erlang:registered(), string:str(atom_to_list(X), "receiver") =/= 0].



%%%===================================================================
%%% protocol test
%%%===================================================================

x() ->
%%    F = fun(Binary) ->
%%        {Id, Binary1} = protocol:read_unsigned(Binary, 32),
%%        {Nick, Binary2} = protocol:read_string(Binary1),
%%        {Name, Remain} = protocol:read_bit_string(Binary2),
%%        %% protocol:read_bit_string(protocol:read_string(protocol:read_unsigned(Binary, 32))),
%%        {{Id, Nick, Name}, Remain}
%%    end,
    Binary = <<1:32, 1:16, "1", 1:16, "1", 2:32, 1:16, "2", 1:16, "2">>,
    protocol:read_list(fun(BinaryData) -> protocol:revise(protocol:read(string, protocol:read(string, protocol:read(32, BinaryData)))) end, Binary).

%%%===================================================================
%%% parser
%%%===================================================================
do() ->
    F = fun({A, B, C, _})  -> [A, B, C] end,
    L = [
        {1,2,3,x},
        {4,5,6,x},
        {7,8,9,x}
    ],
    parser:collect_into(L, F, {<<"insert into `test` (`a`, `b`, `c`) values ">>, <<"(~w, ~w, ~w)">>, <<" on duplicate key update `type` = VALUES(`type`), `type` = VALUES(`type`), `type` = VALUES(`type`)">>}, 4).

doo() ->
    catch ets:new(test, [named_table, {keypos, 1}]),

    F = fun({A, B, C, _})  -> [A, B, C] end,
    L = [
        {1,2,3,x},
        {4,5,6,x},
        {7,8,9,x}
    ],
    ets:insert(test, L),
    parser:collect_into(test, F, {<<"insert into `test` (`a`, `b`, `c`) values ">>, <<"(~w, ~w, ~w)">>, <<" on duplicate key update `type` = VALUES(`type`), `type` = VALUES(`type`), `type` = VALUES(`type`)">>}, 4).

%%%===================================================================
%%% sorter test
%%%===================================================================
tss() ->
    SortList = [
        #rank{type = 1, key = 1, value = 1, rank = 2},
        #rank{type = 1, key = 1, value = 1, rank = 3},
        #rank{type = 1, key = 1, value = 1, rank = 1},
        #rank{type = 1, key = 1, value = 1, rank = 4},
        #rank{type = 1, key = 1, value = 1, rank = 5}
    ],
    Sorter = sorter:new(wow, share, replace, 100, #rank.key, #rank.value, #rank.time, #rank.rank, SortList),
    sorter:update(#rank{type = 1, rank = 0}, Sorter),
    sorter:data(Sorter).

%%%===================================================================
%%% randomness test
%%%===================================================================
test_randomness() ->
    F = fun(_) -> test_randomness_loop(lists:duplicate(1000, 0), dict:new()) end,
    All = misc:map_reduce(F, lists:seq(1, 1000)),
    String = lists:flatten(["[" ++ string:join([io_lib:format("{~p:~p}", [X, N]) || {X, N} <- List], ", ") ++ "]\n" || List <- All]),
    file:write_file("sample.json", String).

test_randomness_loop([], Dict) ->
    lists:sort(dict:to_list(Dict));
test_randomness_loop([_ | T], Dict) ->
    X = randomness:rand(),
    test_randomness_loop(T, dict:update_counter(X, 1, Dict)).

%%%===================================================================
%%% other test
%%%===================================================================

hp(Old, New) ->
    HPLevel = (Old div 10),
    case (HPLevel) =/= New div 10 of
        true ->
            hp(HPLevel);
        false ->
            ok
    end.

hp(1) ->
    1;
hp(2) ->
    1;
hp(3) ->
    2;
hp(4) ->
    3;
hp(5) ->
    4;
hp(6) ->
    5;
hp(7) ->
    6;
hp(8) ->
    7;
hp(9) ->
    8;
hp(10) ->
    9;
hp(_) ->
    ok.

-record(priority_queue, {size, key, left, right, queue}).

new(Key) ->
    #priority_queue{key = Key, size = 0, left = [], right = [], queue = []}.

query(Item, Queue = #priority_queue{key = Key, queue = Queue}) ->
    NewQueue = push_loop(Queue, Key, Item, []),
    Queue#priority_queue{queue = NewQueue}.

push_loop([], _, Item, List) ->
    lists:reverse([Item | List]);
push_loop([H | T], Key, Item, List) when erlang:element(Key, Item) >= erlang:element(Key, H)->
    lists:reverse([H | List], T);
push_loop([H | T], Key, Item, List) ->
    push_loop(T, Key, Item, [H | List]).

priority_queue() ->
    Q = new(2),
    Q1 = query(Q, {1, 1}),
    Q1 = query(Q, {2, 2}),
    ok.


%%%===================================================================
%%% regexp
%%%===================================================================
%% match record(multi line)
%% 跨行匹配左边不接非空白字符，名字开头，后接以.结尾或者后面是注释%的记录
%% (?s)(?<!\\S)(-record\\(~s\\s*,.+?)(?=\\.$|\\%)\\.

%% function(multi line)
%% 跨行匹配左边不接非空白字符，名字开头，后接以.结尾或者后面是注释%的函数
%% (?s)(?<!\\S)(~s.+?)(?=\\.$|\\%)\\.

%% define(single line)
%% 跨行匹配左边不接非空白字符，名字开头，后接以.结尾或者后面是注释%的定义
%% (?<!\\S)(-define\\s*\\(~s.+?)(?=\\.$|\\%)\\.

%% all include(single line)
%% 跨行匹配左边不接非空白字符，名字开头，后接以.结尾或者后面是注释%的依赖
%% (?<!\\S)(-include\\s*\\(~s\\s*\\.+?)(?=\\.$|\\%)\\.
%% 匹配所有include
%% (?<!\\S)(-include.+?)(?=\\.$|\\%)\\.

%% 匹配record
%% (?m)(?s)^-record\\(~s\\s*,\\s*\\{.+?^((?!%).)*?\\}\s*\\)\\.(?=$|\s|%)
%% 匹配函数
%% (?m)(?s)^~s\(.*?\)\s*->.+?^((?!%).)*?\.(?=$|\s|%)



%%%===================================================================
%%% back plant
%%%===================================================================
%% user data
%% log data
%% config data
%% statistic(active/charge/use new or lost)
%% user manager(mail/forbid/login/chat)
%% tool(config data hot load)
%% admin(user/privileges)

%%%===================================================================
%%% architecture plant
%%%===================================================================
%%IO(ok)
%%数据(ok)
%%协议
%%集群(ok)
%%通用工具(ok)
%%错误日志(ok)
%%构造器(敏感词/表到记录/表到sql/表到日志/表到数据/表到lua/表到excel/协议)(ok)
%%
%%日志(模块数据)(ok)
%%背包(item, bag, store)(ok)
%%帮派(guild_handle,guild_server,guild)
%%任务(quest_handle,quest_check,quest)(ok)
%%好友
%%商店(ok)
%%聊天(ok)
%%邮件(ok)
%%公告(ok)
%%排行(ok)
%%敏感词(ok)
%%兑换码(ok)
%%活动
%%支付

%% 属性

%% 技能
%% buff
%% 地图
%% 战场
%% 副本

%%%===================================================================
%%% important
%%%===================================================================
%% 战斗
%% 攻击者使用技能对作用半径内敌人(一个或多个)发起攻击
%% 如果命中
%% 计算伤害(基本属性伤害),计算被动技能
%% 计算技能Buff
%% 更新对象

%%% 玩家/怪物/NPC/掉落
%%% 属性/技能/Buff
%%%
%%%
%%%===================================================================
%%% important
%%%===================================================================
%% 怪物AI (通过类型和目标对象组合得来)
%% 类型           |   目标对象
%% 固定(fix)      |   敌人(enemy)
%% 移动(move)     |   玩家(fighter)
%% 主动(active)   |   怪物(monster)
%% 被动(passive)  |   指定类型怪物(monster, id)
%%
%%chose_object(State, Attacker, Target, self) -> Attacker;
%%chose_object(State, Attacker, Target, rival) -> Target.
%%
%%chose_attribute(State, Object, Hurt, attribute) -> Object#fighter.attribute;
%%chose_attribute(State, Object, Hurt, buff) -> Object#fighter.buffs;
%%chose_attribute(State, Object, Hurt, hurt) -> Hurt;
%%chose_attribute(State, Object, Hurt, skill) -> Object#fighter.skills.
%%
%%chose_field(power) -> ok.
%%
%%calculate_value() -> ok.
%%
%%chose_operation(add) -> ok;
%%chose_operation(clear) -> ok;
%%chose_operation(reduce) -> ok;
%%chose_operation(set) -> ok.

%% type   : fix move active passive
%% act_script : enemy fighter monster {monster, id} location

%% @todo work plan
%% error code generate from protocol script
%% asset add/check/cost/ generate
%% excel maker/refer(`event_data`.`event`, `event_data`.`description`)
%% map/battle/tool arrangement
%%
%%
%% full robot
%% split robot
%%
%% role_state_misc
%% role_state_time
%% role_state_number
%% role_state_size
%%
%% single machine/one platform/one admin
%%
%% learn digest
%% git/mysql
%%
%%
%%
%%
%% 0000000000000000
%% ChannelId * 1000000000000000000 + ServerId * 1000000000000001.
%%
%% BaseChannelId    => 01000000000000000000
%% BaseServerId     => 00001000000000000000
%% DistinctServerId => 00000001000000000000
%% 01000000000000000000 * ChannelId
%% 00001000000000000000 * ServerId
%% 00000001000000000000 * ServerId
%% 00000000000000000000
%% 01001001000000000000  1      =>  01001001000000000000  1
%% 01002002000000000000  2      =>  01001002000000000000  1
%% 01099099000000000000  99     =>  01100099000000000000  100
%% 01100100000000000000  100    =>  01100100000000000000  100
%% ServerId = (Id rem BaseChannelId) div BaseServerId
%%
%%
%% select min(id) from log;
%% select max(id) from log;
%% page:
%% first: select * from log where id between (min) and (max) limit 100;
%% next:  select * from log where id between (page max) and (max) limit 100;