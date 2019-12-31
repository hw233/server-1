%%%------------------------------------------------------------------
%%% @doc
%%% user define
%%% @end
%%%------------------------------------------------------------------

%% 角色数据 (load/save/reset/clean/expire) 使用loop_maker生成load/save/reset/clean/expire代码
-record(user, {
    role = [],                                        %% 角色 (load/save)
    asset = [],                                       %% 资产 (load/save)
    vip = [],                                         %% vip (load/save)
    item = [],                                        %% 物品 (load/save/expire)
    bag = [],                                         %% 装备背包
    store = [],                                       %% 仓库背包
    body = [],                                        %% 身上装备
    quest = [],                                       %% 任务 (load/save)
    mail = [],                                        %% 邮件 (load)
    friend = [],                                      %% 好友 (load/save)
    shop = [],                                        %% 商店 (load/save/reset)
    buff = [],                                        %% Buff (load/save/expire)
    skill = [],                                       %% 技能 (load/save)
    count = [],                                       %% 计数 (load/save/reset)
    role_id = 0,                                      %% 角色ID
    role_name = <<>>,                                 %% 角色名
    account = <<>>,                                   %% 帐户名
    server_id = 0,                                    %% 服务器ID
    pid,                                              %% 角色进程pid
    sender_pid,                                       %% 角色发送进程pid
    receiver_pid,                                     %% 角色接受器进程pid
    socket,                                           %% 套接字
    socket_type,                                      %% 套接字类型
    protocol_type = 0,                                %% 协议类型/默认(tcp)/websocket(HyBi)/websocket(HiXie)
    login_time = 0,                                   %% 登录时间
    tick = 1,                                         %% 保存时间
    timeout = 0,                                      %% 超时时间
    loop_timer,                                       %% 循环定时器
    logout_timer,                                     %% 退出定时器
    node = local,                                     %% 所处节点
    total_attribute,                                  %% 总属性
    attributes = [],                                  %% 属性列表
    world_chat_time = 0,                              %% 世界聊天时间
    guild_chat_time = 0,                              %% 公会聊天时间
    effect = [],                                      %% 效果
    trigger = []                                      %% 触发器
}).


%% 通用成功类型
-type ok() :: ok | {ok, User :: #user{}} | {ok, term(), User :: #user{}}.
