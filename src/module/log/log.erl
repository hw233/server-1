%%%-------------------------------------------------------------------
%%% @doc
%%% module log
%%% @end
%%%-------------------------------------------------------------------
-module(log).
-compile(nowarn_export_all).
-compile(export_all).
%%%===================================================================
%%% API
%%%===================================================================
log_player(UserId, Exp, Time) ->
    log_server:log(log_player, [UserId, Exp, Time]).

log_rank(RankType, RoleId, RoleName, Pos, CountNum, CountTime, Time) ->
    log_server:log(log_rank, [RankType, RoleId, RoleName, Pos, CountNum, CountTime, Time]).

