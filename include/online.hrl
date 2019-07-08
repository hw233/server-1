%%%-------------------------------------------------------------------
%%% @doc
%%% user user online info
%%% @end
%%%-------------------------------------------------------------------

%% 角色在线信息
%% online =====> online
-record(online, {
    id = 0,                                           %% id 
    account_name = <<>>,                              %% 用户名
    name = <<>>,                                      %% 昵称
    level = 0,                                        %% 等级
    status = undefined,                               %% online/hosting
    pid = undefined,                                  %% 角色进程pid
    pid_sender = undefined,                           %% 角色发送进程pid
    socket = undefined                                %% 套接字
}).

