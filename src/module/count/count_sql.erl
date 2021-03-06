-module(count_sql).
-compile(nowarn_export_all).
-compile(export_all).
-include("count.hrl").
-define(INSERT_COUNT, <<"INSERT INTO `count` (`role_id`, `type`, `today_number`, `week_number`, `total_number`, `time`) VALUES (~w, ~w, ~w, ~w, ~w, ~w)">>).
-define(SELECT_COUNT, <<"SELECT `role_id`, `type`, `today_number`, `week_number`, `total_number`, `time`, `flag` FROM `count` WHERE `role_id` = ~w">>).
-define(UPDATE_COUNT, <<"UPDATE `count` SET `today_number` = ~w, `week_number` = ~w, `total_number` = ~w, `time` = ~w WHERE `role_id` = ~w AND `type` = ~w">>).
-define(DELETE_COUNT, <<"DELETE  FROM `count` WHERE `role_id` = ~w AND `type` = ~w">>).
-define(INSERT_UPDATE_COUNT, {<<"INSERT INTO `count` (`role_id`, `type`, `today_number`, `week_number`, `total_number`, `time`) VALUES ">>, <<"(~w, ~w, ~w, ~w, ~w, ~w)">>, <<" ON DUPLICATE KEY UPDATE `today_number` = VALUES(`today_number`), `week_number` = VALUES(`week_number`), `total_number` = VALUES(`total_number`), `time` = VALUES(`time`)">>}).
-define(TRUNCATE, <<"TRUNCATE TABLE `count`">>).

%% @doc insert
insert(Count) ->
    Sql = parser:format(?INSERT_COUNT, [
        Count#count.role_id,
        Count#count.type,
        Count#count.today_number,
        Count#count.week_number,
        Count#count.total_number,
        Count#count.time
    ]),
    sql:insert(Sql).

%% @doc select
select(RoleId) ->
    Sql = parser:format(?SELECT_COUNT, [RoleId]),
    Data = sql:select(Sql),
    parser:convert(Data, count).

%% @doc update
update(Count) ->
    Sql = parser:format(?UPDATE_COUNT, [
        Count#count.today_number,
        Count#count.week_number,
        Count#count.total_number,
        Count#count.time,
        Count#count.role_id,
        Count#count.type
    ]),
    sql:update(Sql).

%% @doc delete
delete(RoleId, Type) ->
    Sql = parser:format(?DELETE_COUNT, [RoleId, Type]),
    sql:delete(Sql).


%% @doc insert_update
insert_update(Data) ->
    F = fun(Count) -> [
        Count#count.role_id,
        Count#count.type,
        Count#count.today_number,
        Count#count.week_number,
        Count#count.total_number,
        Count#count.time
    ] end,
    {Sql, NewData} = parser:collect_into(Data, F, ?INSERT_UPDATE_COUNT, #count.flag),
    sql:insert(Sql),
    NewData.

%% @doc truncate
truncate() ->
    Sql = parser:format(?TRUNCATE, []),
    sql:query(Sql).

