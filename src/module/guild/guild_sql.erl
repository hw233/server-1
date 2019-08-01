-module(guild_sql).
-compile(nowarn_export_all).
-compile(export_all).
-include("guild.hrl").

-define(INSERT_GUILD, <<"INSERT INTO `guild` (`guild_name`, `create_time`, `exp`, `wealth`, `level`, `notice`) VALUES ('~s', '~w', '~w', '~w', '~w', '~w')">>).
-define(UPDATE_GUILD, <<"UPDATE `guild` SET `guild_name` = '~s', `exp` = '~w', `wealth` = '~w', `level` = '~w', `notice` = '~w' WHERE `guild_id` = '~w'">>).
-define(SELECT_GUILD, <<"SELECT * FROM `guild` ">>).
-define(DELETE_GUILD, <<"DELETE  FROM `guild` WHERE `guild_id` = '~w'">>).
-define(UPDATE_INTO_GUILD, {<<"INSERT INTO `guild` (`guild_id`, `guild_name`, `create_time`, `exp`, `wealth`, `level`, `notice`) VALUES ">>, <<"('~w', '~s', '~w', '~w', '~w', '~w', '~w')">>, <<" ON DUPLICATE KEY UPDATE `guild_name` = VALUES(`guild_name`), `exp` = VALUES(`exp`), `wealth` = VALUES(`wealth`), `level` = VALUES(`level`), `notice` = VALUES(`notice`)">>}).
-define(UPDATE_GUILD_NAME, <<"UPDATE `guild` SET `guild_name` = '~s' WHERE `guild_id` = '~w'">>).
-define(UPDATE_GUILD_LEVEL, <<"UPDATE `guild` SET `level` = '~w' WHERE `guild_id` = '~w'">>).
-define(UPDATE_GUILD_NOTICE, <<"UPDATE `guild` SET `notice` = '~w' WHERE `guild_id` = '~w'">>).

%% @doc update_into
update_into(DataList) ->
    F = fun(Guild) -> [
        Guild#guild.guild_id,
        Guild#guild.guild_name,
        Guild#guild.create_time,
        Guild#guild.exp,
        Guild#guild.wealth,
        Guild#guild.level,
        Guild#guild.notice
    ] end,
    {Sql, NewData} = parser:collect(DataList, F, ?UPDATE_INTO_GUILD, #guild.flag),
    sql:insert(Sql),
    NewData.


%% @doc insert
insert(Guild) ->
    Sql = parser:format(?INSERT_GUILD, [
        Guild#guild.guild_name,
        Guild#guild.create_time,
        Guild#guild.exp,
        Guild#guild.wealth,
        Guild#guild.level,
        Guild#guild.notice
    ]),
    sql:insert(Sql).

%% @doc update
update(Guild) ->
    Sql = parser:format(?UPDATE_GUILD, [
        Guild#guild.guild_name,
        Guild#guild.exp,
        Guild#guild.wealth,
        Guild#guild.level,
        Guild#guild.notice,
        Guild#guild.guild_id
    ]),
    sql:update(Sql).

%% @doc select
select() ->
    Sql = parser:format(?SELECT_GUILD, [
        
    ]),
    sql:select(Sql).

%% @doc delete
delete(GuildId) ->
    Sql = parser:format(?DELETE_GUILD, [
        GuildId
    ]),
    sql:delete(Sql).

%% @doc update
update_name(GuildName, GuildId) ->
    Sql = parser:format(?UPDATE_GUILD_NAME, [
        GuildName,
        GuildId
    ]),
    sql:update(Sql).

%% @doc update
update_level(Level, GuildId) ->
    Sql = parser:format(?UPDATE_GUILD_LEVEL, [
        Level,
        GuildId
    ]),
    sql:update(Sql).

%% @doc update
update_notice(Notice, GuildId) ->
    Sql = parser:format(?UPDATE_GUILD_NOTICE, [
        Notice,
        GuildId
    ]),
    sql:update(Sql).

