%%%-------------------------------------------------------------------
%%% @doc
%%% module database fields to record tool
%%% @end
%%%-------------------------------------------------------------------
-module(record_maker).
-export([start/1]).
-export([parse/2]).
%%%===================================================================
%%% API
%%%===================================================================
%% @doc for shell
start(List) ->
    maker:start(fun parse_table/2, List).

%% @doc parse
parse(DataBase, One) ->
    parse_table(DataBase, One).
%% ====================================================================
%% Internal functions
%% ====================================================================
%% parse per table
parse_table(DataBase, {File, Name}) ->
    parse_table(DataBase, {File, Name, Name});
parse_table(DataBase, {_, Name, Record}) ->
    CommentSql = io_lib:format(<<"SELECT `TABLE_NAME`, `TABLE_COMMENT` FROM information_schema.`TABLES` WHERE `TABLE_SCHEMA` = '~s' AND `TABLE_NAME` = '~s';">>, [DataBase, Name]),
    FieldsSql = io_lib:format(<<"SELECT `COLUMN_NAME`, `COLUMN_DEFAULT`, `DATA_TYPE`, `COLUMN_COMMENT`, `ORDINAL_POSITION`, `COLUMN_KEY`, `EXTRA` FROM information_schema.`COLUMNS` WHERE `TABLE_SCHEMA` = '~s' AND TABLE_NAME = '~s' ORDER BY ORDINAL_POSITION;">>, [DataBase, Name]),
    %% fetch table comment
    [_, CommentData] = sql:select_row(DataBase, Name, CommentSql),
    %% fetch table fields
    FieldsData = sql:select(DataBase, Name, FieldsSql),
    %% parse fields
    Total = length(FieldsData),
    Fields = [parse_field(Field, Total) || Field <- FieldsData],
    %% write record data and table comment
    Comment = io_lib:format("%% ~s\n%% ~s =====> ~s", [CommentData, Name, Record]),
    Head = io_lib:format("-record(~s, {\n", [Record]),
    RecordData = lists:concat([Comment, "\n", Head, Fields, "}).\n\n"]),
    %% return data
    RecordPatten = io_lib:format("~s\n(?m)(?s)(?<!\\S)(-record\\s*\\(\\s*~s\\s*,.+?)(?=\\.$|\\.\\%)\\.\n?\n?", [Comment, Record]),
    [{RecordPatten, RecordData}].

%% parse per field

parse_field([Name, Default, Type, Comment, Position, _, _], Total) ->
    %% only parse varchar and tinyint, smallint, int, bigint
    MatchDefaultType = re:run(Comment, "(#\\w+\\{\\})", [{capture, first, list}]),
    case Type of
        <<"char">> ->
            FiledDefault = " = <<>>";
        <<"varchar">> ->
            FiledDefault = " = []";
        _ when MatchDefaultType =/= nomatch ->
            {match, [DefaultType]} = MatchDefaultType,
            FiledDefault = lists:concat([" = ", DefaultType]);
        _ ->
            FiledDefault = lists:concat([" = ", type:to_list(Default)])
    end,
    %% record field end comma
    case Position of
        Total ->
            Comma = "";
        _ ->
            Comma = ","
    end,
    %% format record field expression
    Expression = io_lib:format("~s~s~s", [Name, FiledDefault, Comma]),
    %% calculate alignment space
    Alignment = lists:duplicate(30 - length(lists:flatten(Expression)), " "),
    %% align comment
    io_lib:format("    ~s~s%% ~s \n", [Expression, Alignment, Comment]).