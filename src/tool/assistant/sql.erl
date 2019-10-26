%%%-------------------------------------------------------------------
%%% @doc
%%% module sql execute tool
%%% @end
%%%-------------------------------------------------------------------
-module(sql).
%% API
-export([version/0]).
-export([select_one/1, select_row/1]).
-export([select_one/3, select_row/3]).
-export([select/1, insert/1, update/1, delete/1, query/1]).
-export([select/3, insert/3, update/3, delete/3, query/3]).
-export([fix/1]).
%% ====================================================================
%% API functions
%% ====================================================================
%% @doc version
-spec version() -> binary().
version() ->
    select_one("SELECT VERSION()").

%% @doc select one
-spec select_one(Sql :: iolist()) -> term().
select_one(Sql) ->
    select_one(mysql_connector, table, Sql).
-spec select_one(Connector :: atom(), Table :: atom(), Sql :: iolist()) -> term().
select_one(Connector, Table, Sql) ->
    case select(Connector, Table, Sql) of
        [[One]] ->
            One;
        _ ->
            []
    end.

%% @doc select row
-spec select_row(Sql :: iolist()) -> term().
select_row(Sql) ->
    select_row(mysql_connector, table, Sql).
-spec select_row(Connector :: atom(), Table :: atom(), Sql :: iolist()) -> term().
select_row(Connector, Table, Sql) ->
    case select(Connector, Table, Sql) of
        [Row] ->
            Row;
        _ ->
            []
    end.

%% @doc select row
-spec select(Sql :: iolist()) -> term().
select(Sql) ->
    select(mysql_connector, table, Sql).
-spec select(Connector :: atom(), Table :: atom(), Sql :: iolist()) -> term().
select(Connector, Table, Sql) ->
    statistics(Table, select),
    execute(Connector, Sql, select).

%% @doc insert
-spec insert(Sql :: iolist()) -> term().
insert(Sql) ->
    insert(mysql_connector, table, Sql).
-spec insert(Connector :: atom(), Table :: atom(), Sql :: iolist()) -> term().
insert(Connector, Table, Sql) ->
    statistics(Table, insert),
    execute(Connector, Sql, insert).

%% @doc update
-spec update(Sql :: iolist()) -> term().
update(Sql) ->
    update(mysql_connector, table, Sql).
-spec update(Connector :: atom(), Table :: atom(), Sql :: iolist()) -> term().
update(Connector, Table, Sql) ->
    statistics(Table, update),
    execute(Connector, Sql, update).

%% @doc delete
-spec delete(Sql :: iolist()) -> term().
delete(Sql) ->
    delete(mysql_connector, table, Sql).
-spec delete(Connector :: atom(), Table :: atom(), Sql :: iolist()) -> term().
delete(Connector, Table, Sql) ->
    statistics(Table, delete),
    execute(Connector, Sql, delete).

%% @doc query
-spec query(Sql :: iolist()) -> term().
query(Sql) ->
    query(mysql_connector, table, Sql).
-spec query(Connector :: atom(), Table :: atom(), Sql :: iolist()) -> term().
query(Connector, Table, Sql) ->
    statistics(Table, query),
    execute(Connector, Sql, query).
%% ====================================================================
%% Internal functions
%% ====================================================================
-spec execute(Connector :: atom(), Sql :: iolist(), Method :: term()) -> term().
execute(_Connector, <<>>, _Method) ->
    ok;
execute(_Connector, [], _Method) ->
    ok;
execute(Connector, Sql, Method) ->
    case volley:get(Connector) of
        {ok, Worker} ->
            %% match self to from, fetch/send_msg will never return ok
            %% result will be {data/updated/error, #mysql_result{}}
            Result = mysql_connector:query(Worker, Sql),
            mysql_connector:handle_result(Sql, Method, Result);
        {error, Reason} ->
            %% interrupt operation
            erlang:throw({pool_error, {Connector, Reason}})
    end.

%% 统计数据表操作次数和频率
-spec statistics(Table :: atom(), Operation :: atom()) -> ok.
statistics(_Table, _Operation) ->
    ok.

%% ====================================================================
%% fix part, develop environment use
%% ====================================================================
%% fix sql
%% only add table, add field state
fix(Throw = {sql_error, {Sql, Code, Message}}) ->
    {Method, Table} = explain_sql_sentence(Sql),
    case Code of
        1054 ->
            %% no field
            Field = parse_error_message(Message),
            case find_alter_sentence(Table, Field) of
                {ok, Fix} ->
                    query(Fix),
                    ?MODULE:Method(Sql);
                _ ->
                    erlang:throw(Throw)
            end;
        1146 ->
            %% no table
            case find_create_sentence(Table) of
                {ok, Fix} ->
                    query(Fix),
                    ?MODULE:Method(Sql);
                _ ->
                    erlang:throw(Throw)
            end;
        _ ->
            erlang:throw(Throw)
    end;
fix(Result) ->
    Result.

%% explain sql sentence
explain_sql_sentence(Sql) ->
    case string:tokens(Sql, " ") of
        ["INSERT", "INTO", Table | _] ->
            {insert, Table};
        ["INSERT", Table | _] ->
            {insert, Table};
        ["UPDATE", Table | _] ->
            {update, Table};
        ["SELECT" | T] ->
            {select, lists:nth(listing:index("FROM", T) + 1, T)};
        _ ->
            {error, unknown_sql_sentence}
    end.

%% parse error message
parse_error_message(Message) ->
    case string:tokens(Message, " ") of
        ["Table", Table, "doesn't", "exist" | _] ->
            %% "Table 'main.test' doesn't exist"
            string:strip(hd(tl(string:tokens(Table, "."))), right, $');
        ["Unknown", "column", Field, "in", "'field", "list'" | _] ->
            %% "Unknown column 'field' in 'field list'"
            string:strip(Field, both, $');
        ["Incorrect", Type, "value:", Value, "for", "column", Field, "at", "row" | _] ->
            {Type, Value, Field};
        ["Out", "of", "range", "value", "for", "column", Field, "at", "row" | _] ->
            Field;
        _ ->
            {error, unknown_message_sentence}
    end.

%% create table sentence
find_create_sentence(Table) ->
    find_sql([Table, "CREATE TABLE"]).

%% alter table sentence
find_alter_sentence(Table, Field) ->
    find_sql([Table, "ALTER TABLE", Field]).

%% read revise sql file
find_sql(Contain) ->
    %% update sql file
    find_sql("script/sql/update.sql", Contain).
find_sql(SqlFile, Contain) ->
    {ok, Binary} = file:read_file(SqlFile),
    String = binary_to_list(Binary),
    List = string:tokens(String, ";"),
    find_sql_loop(List, Contain).

%% find revise sql sentence
find_sql_loop([], _Contain) ->
    {error, no_such_sql};
find_sql_loop([H | T], Contain) ->
    case lists:all(fun(X) -> string:str(H, X) =/= 0 end, Contain) of
        true ->
            %% add separator
            {ok, H ++ ";"};
        false ->
            find_sql_loop(T, Contain)
    end.
