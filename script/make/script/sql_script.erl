%%%-------------------------------------------------------------------
%%% @doc
%%% module sql script
%%% @end
%%%-------------------------------------------------------------------
-module(sql_script).
-export([main/1]).
%% ------------------------ user guide -------------------------------
%%
%% * insert:
%%     insert fields not contain the auto_increment/virtual property
%%     insert update code will auto make when (flag) in comment
%% * select:
%%     select all fields and use primary key by default, (select) in comment will use it to replace the primary key
%%     use join(`table`.`field`) to make select join outer table code
%% * update:
%%     update fields not contain the auto_increment/(once)/virtual property
%%     update row and use primary key by default, (update) in comment will use it to replace the primary key
%%     use (update_???) make fields update group
%% * delete:
%%     delete row and use primary key by default, (delete) in comment will use it to replace the primary key
%%     use (delete_???) make keys delete group
%%     auto_increment in the table, will auto make delete in code by this key
%% * extra mode:
%%     use {select, []} will make select code without key filter
%%
%%%===================================================================
%%% API functions
%%%===================================================================
main(Keys) ->
    code:add_path(filename:dirname(escript:script_name()) ++ "/../../../beam/"),
    Sql = [X || X <- sql(), lists:member(filename:basename(element(1, X), ".erl"), Keys) orelse lists:member(filename:basename(element(1, X), ".erl") ++ "_sql", Keys)],
    List = tool:default(Sql, [begin Name = string:join(string:replace(Key, "_sql", "", trailing), ""), {"src/module/" ++ Name ++ "/" ++ Name ++ "_sql.erl", Name, [Name ++ ".hrl"]} end || Key <- Keys]),
    io:format("~p~n", [catch sql_maker:start(List)]);
main(_) ->
    io:format("invalid argument~n").

%%%===================================================================
%%% sql data
%%%===================================================================
sql() ->
    [
        {"src/module/role/role_sql.erl", role, ["role.hrl"]},
        {"src/module/asset/asset_sql.erl", asset, ["asset.hrl"]},
        {"src/module/vip/vip_sql.erl", vip, ["vip.hrl"]},
        {"src/module/count/count_sql.erl", count, ["count.hrl"]},
        {"src/module/item/item_sql.erl", item, ["item.hrl"]},
        {"src/module/quest/quest_sql.erl", quest, ["quest.hrl"]},
        {"src/module/shop/shop_sql.erl", shop, ["shop.hrl"]},
        {"src/module/mail/mail_sql.erl", mail, ["mail.hrl"]},
        {"src/module/friend/friend_sql.erl", friend, ["friend.hrl"]},
        {"src/module/skill/skill_sql.erl", skill, ["skill.hrl"]},
        {"src/module/buff/buff_sql.erl", buff, ["buff.hrl"]},
        {"src/module/title/title_sql.erl", title, ["title.hrl"]},
        {"src/module/sign/sign_sql.erl", sign, ["sign.hrl"], []},
        {"src/module/auction/auction_sql.erl", auction, ["auction.hrl"], [{select, []}]},
        {"src/module/auction/auction_role_sql.erl", auction_role, ["auction.hrl"], [{select, []}]},
        {"src/module/rank/rank_sql.erl", rank, ["rank.hrl"]},
        {"src/module/dungeon/dungeon_sql.erl", dungeon, ["dungeon.hrl"]},
        {"src/module/guild/guild_sql.erl", guild, ["guild.hrl"], [{select, []}]},
        {"src/module/guild/guild_role_sql.erl", guild_role, ["guild.hrl"], [{select, []}]},
        {"src/module/guild/guild_apply_sql.erl", guild_apply, ["guild.hrl"], [{select, []}]},
        {"src/module/lucky_money/lucky_money_sql.erl", lucky_money, ["lucky_money.hrl"], [{select, []}]},
        {"src/module/lucky_money/lucky_money_role_sql.erl", lucky_money_role, ["lucky_money.hrl"], [{select, []}]}
    ].
