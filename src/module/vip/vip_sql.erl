-module(vip_sql).
-compile(nowarn_export_all).
-compile(export_all).
-include("vip.hrl").
-define(INSERT_VIP, <<"INSERT INTO `vip` (`role_id`, `vip_level`, `exp`, `expire_time`) VALUES ('~w', '~w', '~w', '~w')">>).
-define(SELECT_VIP, <<"SELECT * FROM `vip` WHERE `role_id` = '~w'">>).
-define(UPDATE_VIP, <<"UPDATE `vip` SET `vip_level` = '~w', `exp` = '~w', `expire_time` = '~w' WHERE `role_id` = '~w'">>).
-define(DELETE_VIP, <<"DELETE  FROM `vip` WHERE `role_id` = '~w'">>).
-define(SELECT_JOIN_VIP, <<"SELECT `vip`.`role_id`, `vip`.`vip_level`, `vip`.`exp`, `vip`.`expire_time` FROM `vip` WHERE `vip`.`role_id` = '~w'">>).

%% @doc insert
insert(Vip) ->
    Sql = parser:format(?INSERT_VIP, [
        Vip#vip.role_id,
        Vip#vip.vip_level,
        Vip#vip.exp,
        Vip#vip.expire_time
    ]),
    sql:insert(Sql).

%% @doc select
select(RoleId) ->
    Sql = parser:format(?SELECT_VIP, [RoleId]),
    sql:select(Sql).

%% @doc update
update(Vip) ->
    Sql = parser:format(?UPDATE_VIP, [
        Vip#vip.vip_level,
        Vip#vip.exp,
        Vip#vip.expire_time,
        Vip#vip.role_id
    ]),
    sql:update(Sql).

%% @doc delete
delete(RoleId) ->
    Sql = parser:format(?DELETE_VIP, [RoleId]),
    sql:delete(Sql).

%% @doc select join
select_join(RoleId) ->
    Sql = parser:format(?SELECT_JOIN_VIP, [RoleId]),
    sql:select(Sql).

