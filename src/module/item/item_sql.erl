-module(item_sql).
-compile(nowarn_export_all).
-compile(export_all).
-include("item.hrl").
-define(INSERT_ITEM, <<"INSERT INTO `item` (`role_id`, `item_id`, `type`, `number`, `expire_time`) VALUES (~w, ~w, ~w, ~w, ~w)">>).
-define(SELECT_ITEM, <<"SELECT `item_no`, `role_id`, `item_id`, `type`, `number`, `expire_time`, `flag` FROM `item` WHERE `role_id` = ~w">>).
-define(UPDATE_ITEM, <<"UPDATE `item` SET `role_id` = ~w, `item_id` = ~w, `type` = ~w, `number` = ~w, `expire_time` = ~w WHERE `item_no` = ~w">>).
-define(DELETE_ITEM, <<"DELETE  FROM `item` WHERE `item_no` = ~w">>).
-define(INSERT_UPDATE_ITEM, {<<"INSERT INTO `item` (`item_no`, `role_id`, `item_id`, `type`, `number`, `expire_time`) VALUES ">>, <<"(~w, ~w, ~w, ~w, ~w, ~w)">>, <<" ON DUPLICATE KEY UPDATE `role_id` = VALUES(`role_id`), `item_id` = VALUES(`item_id`), `type` = VALUES(`type`), `number` = VALUES(`number`), `expire_time` = VALUES(`expire_time`)">>}).
-define(DELETE_IN_ITEM_NO, {<<"DELETE  FROM `item` WHERE `item_no` in (">>, <<"~w">>, <<")">>}).
-define(TRUNCATE, <<"TRUNCATE TABLE `item`">>).

%% @doc insert
insert(Item) ->
    Sql = parser:format(?INSERT_ITEM, [
        Item#item.role_id,
        Item#item.item_id,
        Item#item.type,
        Item#item.number,
        Item#item.expire_time
    ]),
    sql:insert(Sql).

%% @doc select
select(RoleId) ->
    Sql = parser:format(?SELECT_ITEM, [RoleId]),
    Data = sql:select(Sql),
    parser:convert(Data, item).

%% @doc update
update(Item) ->
    Sql = parser:format(?UPDATE_ITEM, [
        Item#item.role_id,
        Item#item.item_id,
        Item#item.type,
        Item#item.number,
        Item#item.expire_time,
        Item#item.item_no
    ]),
    sql:update(Sql).

%% @doc delete
delete(ItemNo) ->
    Sql = parser:format(?DELETE_ITEM, [ItemNo]),
    sql:delete(Sql).


%% @doc insert_update
insert_update(Data) ->
    F = fun(Item) -> [
        Item#item.item_no,
        Item#item.role_id,
        Item#item.item_id,
        Item#item.type,
        Item#item.number,
        Item#item.expire_time
    ] end,
    {Sql, NewData} = parser:collect_into(Data, F, ?INSERT_UPDATE_ITEM, #item.flag),
    sql:insert(Sql),
    NewData.

%% @doc delete
delete_in_item_no(ItemNoList) ->
    F = fun(ItemNo) -> [ItemNo] end,
    Sql = parser:collect(ItemNoList, F, ?DELETE_IN_ITEM_NO),
    sql:delete(Sql).

%% @doc truncate
truncate() ->
    Sql = parser:format(?TRUNCATE, []),
    sql:query(Sql).

