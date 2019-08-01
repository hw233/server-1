-module(shop_sql).
-compile(nowarn_export_all).
-compile(export_all).
-include("shop.hrl").

-define(INSERT_SHOP, <<"INSERT INTO `shop` (`role_id`, `shop_id`, `amount`) VALUES ('~w', '~w', '~w')">>).
-define(UPDATE_SHOP, <<"UPDATE `shop` SET `amount` = '~w' WHERE `role_id` = '~w' AND `shop_id` = '~w'">>).
-define(SELECT_SHOP, <<"SELECT * FROM `shop` WHERE `role_id` = '~w'">>).
-define(DELETE_SHOP, <<"DELETE  FROM `shop` WHERE `role_id` = '~w' AND `shop_id` = '~w'">>).
-define(UPDATE_INTO_SHOP, {<<"INSERT INTO `shop` (`role_id`, `shop_id`, `amount`) VALUES ">>, <<"('~w', '~w', '~w')">>, <<" ON DUPLICATE KEY UPDATE `amount` = VALUES(`amount`)">>}).

%% @doc update_into
update_into(DataList) ->
    F = fun(Shop) -> [
        Shop#shop.role_id,
        Shop#shop.shop_id,
        Shop#shop.amount
    ] end,
    {Sql, NewData} = parser:collect(DataList, F, ?UPDATE_INTO_SHOP, #shop.flag),
    sql:insert(Sql),
    NewData.


%% @doc insert
insert(Shop) ->
    Sql = parser:format(?INSERT_SHOP, [
        Shop#shop.role_id,
        Shop#shop.shop_id,
        Shop#shop.amount
    ]),
    sql:insert(Sql).

%% @doc update
update(Shop) ->
    Sql = parser:format(?UPDATE_SHOP, [
        Shop#shop.amount,
        Shop#shop.role_id,
        Shop#shop.shop_id
    ]),
    sql:update(Sql).

%% @doc select
select(RoleId) ->
    Sql = parser:format(?SELECT_SHOP, [
        RoleId
    ]),
    sql:select(Sql).

%% @doc delete
delete(RoleId, ShopId) ->
    Sql = parser:format(?DELETE_SHOP, [
        RoleId,
        ShopId
    ]),
    sql:delete(Sql).

