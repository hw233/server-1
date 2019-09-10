-module(guild_sql).
-compile(nowarn_export_all).
-compile(export_all).
-include("guild.hrl").
-define(INSERT_GUILD, <<"INSERT INTO `guild` (`exp`, `wealth`, `level`, `create_time`, `guild_name`, `notice`) VALUES ('~w', '~w', '~w', '~w', '~s', '~s')">>).
-define(SELECT_GUILD, <<"SELECT * FROM `guild`">>).
-define(UPDATE_GUILD, <<"UPDATE `guild` SET `exp` = '~w', `wealth` = '~w', `level` = '~w' WHERE `guild_id` = '~w'">>).
-define(DELETE_GUILD, <<"DELETE  FROM `guild` WHERE `guild_id` = '~w'">>).
-define(INSERT_UPDATE_GUILD, {<<"INSERT INTO `guild` (`exp`, `wealth`, `level`, `create_time`, `guild_name`, `notice`) VALUES ">>, <<"('~w', '~w', '~w', '~w', '~s', '~s')">>, <<" ON DUPLICATE KEY UPDATE `exp` = '~w', `wealth` = '~w', `level` = '~w'">>}).
-define(SELECT_JOIN_GUILD, <<"SELECT `guild`.`guild_id`, `guild`.`exp`, `guild`.`wealth`, `guild`.`level`, `guild`.`create_time`, `guild`.`guild_name`, `guild`.`notice`, `guild`.`leader_id`, `guild`.`leader_name`, `guild`.`flag` FROM `guild`">>).
-define(UPDATE_NOTICE, <<"UPDATE `guild` SET `notice` = '~s' WHERE `guild_id` = '~w'">>).
-define(UPDATE_NAME, <<"UPDATE `guild` SET `guild_name` = '~s' WHERE `guild_id` = '~w'">>).
-define(DELETE_IN_GUILD_ID, {<<"DELETE  FROM `guild` WHERE `guild_id` in (">>, <<"'~w'">>, <<")">>}).

%% @doc insert
insert(Guild) ->
    Sql = parser:format(?INSERT_GUILD, [
        Guild#guild.exp,
        Guild#guild.wealth,
        Guild#guild.level,
        Guild#guild.create_time,
        Guild#guild.guild_name,
        Guild#guild.notice
    ]),
    sql:insert(Sql).

%% @doc select
select() ->
    Sql = parser:format(?SELECT_GUILD, []),
    sql:select(Sql).

%% @doc update
update(Guild) ->
    Sql = parser:format(?UPDATE_GUILD, [
        Guild#guild.exp,
        Guild#guild.wealth,
        Guild#guild.level,
        Guild#guild.guild_id
    ]),
    sql:update(Sql).

%% @doc delete
delete(GuildId) ->
    Sql = parser:format(?DELETE_GUILD, [GuildId]),
    sql:delete(Sql).


%% @doc insert_update
insert_update(Data) ->
    F = fun(Guild) -> [
        Guild#guild.exp,
        Guild#guild.wealth,
        Guild#guild.level,
        Guild#guild.create_time,
        Guild#guild.guild_name,
        Guild#guild.notice
    ] end,
    {Sql, NewData} = parser:collect_into(Data, F, ?INSERT_UPDATE_GUILD, #guild.flag),
    sql:insert(Sql),
    NewData.

%% @doc select join
select_join() ->
    Sql = parser:format(?SELECT_JOIN_GUILD, []),
    sql:select(Sql).

%% @doc update
update_notice(Notice, GuildId) ->
    Sql = parser:format(?UPDATE_NOTICE, [Notice, GuildId]),
    sql:update(Sql).

%% @doc update
update_name(GuildName, GuildId) ->
    Sql = parser:format(?UPDATE_NAME, [GuildName, GuildId]),
    sql:update(Sql).

%% @doc delete
delete_in_guild_id(GuildIdList) ->
	F = fun(GuildId) -> [GuildId] end,
    Sql = parser:collect(GuildIdList, F, ?DELETE_IN_GUILD_ID),
    sql:delete(Sql).

