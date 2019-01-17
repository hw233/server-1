-module(excel_maker).
-export([to_xml/1, to_xml/2]).
-export([to_table/1, to_table/2]).
-include_lib("xmerl/include/xmerl.hrl").
%%====================================================================
%% table to excel
%%====================================================================
%% make xml sheet part
to_xml(Table) ->
    to_xml(game, Table).
to_xml(DataBase, Table) ->
    %% load table data
    {Name, Data} = parse_table(DataBase, Table),
    %% make work book element
    Element = make_book(Data),
    %% export to characters list
    List = xmerl:export_element(Element, xmerl_xml),
    %% xml sheeet head
    Head = list_to_binary("<?xml version=\"1.0\" encoding=\"utf-8\"?><?mso-application progid=\"Excel.Sheet\"?>"),
    WorkBook = unicode:characters_to_binary(lists:flatten(List)),
    %% !!! different os shell need different encode type
    %% !!! such windows nt with gbk need characters list/binary int
    %% !!! the unix shell with utf8 need characters list/binary
    %% characters list int
    case file:write_file(Name ++ ".xml", <<Head/binary, WorkBook/binary>>) of
        {error, _} ->
                %% characters list/binary
                ListName = binary_to_list(unicode:characters_to_binary(Name)),
                file:write_file(ListName ++ ".xml", <<Head/binary, WorkBook/binary>>);
        Other ->
                Other
    end.

make_book(Data) ->
    Attributes = [
        #xmlAttribute{name = xmlns, value = "urn:schemas-microsoft-com:office:spreadsheet"},
        #xmlAttribute{name = 'xmlns:ss', value = "urn:schemas-microsoft-com:office:spreadsheet"}
    ],
    #xmlElement{name = 'Workbook', attributes = Attributes, content = make_sheet(Data, [])}.

make_sheet([], List) ->
    lists:reverse(List);
make_sheet([{Name, Data, validation} | T], List) ->
    Sheet = #xmlElement{name = 'Worksheet', attributes = [#xmlAttribute{name = 'ss:Name', value = Name}], content = [make_table(Data), make_sheet_option()]},
    make_sheet(T, [Sheet | List]);
make_sheet([{Name, Data, Validation} | T], List) ->
    ValidationContent = make_data_validation(Validation, []),
    Sheet = #xmlElement{name = 'Worksheet', attributes = [#xmlAttribute{name = 'ss:Name', value = Name}], content = [make_table(Data) | ValidationContent]},
    make_sheet(T, [Sheet | List]).

make_table(Data) ->
    #xmlElement{name = 'Table', content = [make_row(Row) || Row <- Data]}.

make_row(Row) ->
    #xmlElement{name = 'Row', content = [make_cell(Text) || Text <- Row]}.

make_cell(Text) ->
    #xmlElement{name = 'Cell', content = [make_data(Text)]}.

make_data(Text) ->
    %% text will convert to list/binary first
    %% check integer type
    case catch list_to_integer(Text) of
        {'EXIT', _} ->
            #xmlElement{name = 'Data', attributes = [#xmlAttribute{name = 'ss:Type', value = "String"}], content = [make_text(Text)]};
        _ ->
            #xmlElement{name = 'Data', attributes = [#xmlAttribute{name = 'ss:Type', value = "Number"}], content = [make_text(Text)]}
    end.

make_sheet_option() ->
    #xmlElement{name = 'WorksheetOptions', attributes = [#xmlAttribute{name = xmlns, value = "urn:schemas-microsoft-com:office:excel"}], content = [make_visible()]}.

make_visible() ->
    #xmlElement{name = 'Visible', content = [make_text("SheetHidden")]}.

make_data_validation([], List) ->
    List;
make_data_validation([{Range, Value} | T], List) ->
    Validation = #xmlElement{
        name = 'DataValidation',
        attributes = [
            #xmlAttribute{name = xmlns, value = "urn:schemas-microsoft-com:office:excel"}
        ],
        content = [
            make_range(Range),
            make_type(),
            make_value(Value),
            make_error_style()
        ]},
    make_data_validation(T, [Validation | List]).

make_range(Range) ->
    #xmlElement{name = 'Range', content = [make_text(Range)]}.

make_type() ->
    #xmlElement{name = 'Type', content = [make_text("List")]}.

make_value(Value) ->
    #xmlElement{name = 'Value', content = [make_text(Value)]}.

make_error_style() ->
    #xmlElement{name = 'ErrorStyle', content = [make_text("Stop")]}.

make_text(Text) ->
    #xmlText{value = Text}.

%%====================================================================
%% parse table data part
parse_table(DataBase, Table) ->
    CommentSql = io_lib:format(<<"SELECT `TABLE_COMMENT` FROM information_schema.`TABLES` WHERE `TABLE_SCHEMA` = '~s' AND `TABLE_NAME` = '~s';">>, [DataBase, Table]),
    FieldsSql = io_lib:format(<<"SELECT `COLUMN_NAME`, `COLUMN_DEFAULT`, `DATA_TYPE`, `COLUMN_COMMENT`, `ORDINAL_POSITION`, `COLUMN_KEY`, `EXTRA` FROM information_schema.`COLUMNS` WHERE `TABLE_SCHEMA` = '~s' AND `TABLE_NAME` = '~s' ORDER BY `ORDINAL_POSITION`;">>, [DataBase, Table]),
    %% fetch table comment
    [[TableComment]] = maker:select(CommentSql),
    %% fetch table fields
    Fields = maker:select(FieldsSql),
    {ColumnComment, Validation, ValidateData} = load_validation(Fields, 1, [], [], []),
    %% target table all data
    DataBaseData = maker:select(lists:concat(["SELECT * FROM ", Table])),
    %% transform data with ValidateData
    TransformData = transform_data(DataBaseData, ValidateData),
    %% remove empty data validate data
    RemoveEmpty = [X || {_, [_|_], _} = X <- ValidateData],
    %% add column comment and validate data
    %% convert unicode binary list to characters list
    SheetData = {unicode:characters_to_list_int(TableComment, utf8), [ColumnComment | TransformData], Validation},
    %% all sheet data
    %% convert unicode binary list to binary
    {unicode:characters_to_list_int(TableComment, utf8), [SheetData | RemoveEmpty]}.

%% load validate data
load_validation([], _, ColumnComment, Validation, DataList) ->
    {lists:reverse(ColumnComment), lists:reverse(Validation), lists:reverse(DataList)};
load_validation([[_, _, _, C, _, _, _] | T], Index, ColumnComment, Validation, DataList) ->
    %% remove (.*?) from comment
    Comment = re:replace(binary_to_list(C), "\\(.*?\\)", "", [global, {return, list}]),
    %% convert unicode binary list to characters list
    SheetName = unicode:characters_to_list_int(list_to_binary(Comment), utf8),
    %% capture (`table`.`key`,`table`.`value`)
    case re:run(C, "(?<=\\()(`?\\w+`?)\\.`?\\w+`?\\s*,\\s*(`?\\w+`?)\\.`?\\w+`?(?=\\))", [global, {capture, all, list}]) of
        {match, [[Fields, Table, Table]]} ->
            %% fetch table k,v data
            RawData = maker:select(lists:concat(["SELECT ", Fields, " FROM ", Table])),
            Data = [[to_list_int(X) || X <- R] || R <- RawData],
            %% column comment as sheet name
            %% Validation
            %% |--- Range: C Index(C1/C2/...)
            %% |--- Value: Comment!C2(kv's data v)
            load_validation(T, Index + 1, [SheetName | ColumnComment], [{"C" ++ integer_to_list(Index), SheetName ++ "!C2"} | Validation], [{SheetName, Data, validation} | DataList]);
        _ ->
            %% ensure zip function data list length equal column length
            load_validation(T, Index + 1, [SheetName | ColumnComment], Validation, [{SheetName, [], []} | DataList])
    end.

%% transform database data to excel data
transform_data(DataBaseData, ValidateData) ->
    F = fun(V, {_, [], _}) -> to_list_int(V); (V, {_, L, _}) -> find(to_list_int(V), 2, 1, L) end,
    [lists:zipwith(F, Row, ValidateData) || Row <- DataBaseData].

%% find value in list by index i equal k
find(_, _, _, []) ->
    [];
find(K, V, I, [H|L]) ->
    case lists:nth(I, H) of
        K ->
            lists:nth(V, H);
        _ ->
            find(K, V, I, L)
    end.

%%====================================================================
%% public characters convert tool
%%====================================================================
%% convert to unicode format
to_list_int(Term) when is_list(Term)      -> to_list(Term, int);
to_list_int(Term) when is_integer(Term)   -> unicode:characters_to_list_int(integer_to_list(Term), utf8);
to_list_int(Term) when is_binary(Term)    -> unicode:characters_to_list_int(Term, utf8);
to_list_int(Term)                         -> Term.

to_list(Encode, int) when is_list(Encode) ->
    case catch list_to_binary(Encode) of
        {'EXIT', _} ->
            Encode;
        Binary ->
            unicode:characters_to_list_int(Binary, utf8)
    end;
to_list(Encode, list) when is_list(Encode) ->
    case catch list_to_binary(Encode) of
        {'EXIT', _} ->
            binary_to_list(unicode:characters_to_binary(Encode, utf8));
        _ ->
            Encode
    end.
%%====================================================================
%% excel to table
%%====================================================================
to_table(File) ->
    to_table(game, File).
to_table(DataBase, File) ->
    {Name, Data} = restore(File),
    %% Name must characters binary or characters list
    %% binary format with ~s will convert to characters list,  一  => [228, 184, 128]
    %% binary format with ~ts will convert to unicode list,    一  => [19968]
    CommentSql = io_lib:format(<<"SELECT `TABLE_NAME` FROM information_schema.`TABLES` WHERE `TABLE_SCHEMA` = '~s' AND `TABLE_COMMENT` = '~s';">>, [DataBase, Name]),
    case maker:select(CommentSql) of
        [[Table]] ->
            AllData = [io_lib:format(lists:flatten(["(", string:join(lists:duplicate(length(Row), "~p"), ", "), ")"]), Row) || Row <- Data],
            %% ensure data order
            DataPart = string:join(lists:reverse(AllData), ", "),
            Sql = lists:concat(["INSERT INTO `", binary_to_list(Table), "` VALUES ", DataPart]),
            maker:execute(io_lib:format("TRUNCATE `~s`", [Table])),
            maker:insert(Sql),
            ok;
        [] ->
            io:format("no such comment table~n"),
            error;
        More ->
            io:format("one more same comment table:~p~n", [More]),
            error
    end.

%% load excel sheet data part
%% !!! different os shell will encode to different type
%% !!! unicode file name pass by shell as characters list
%% !!! unicode file name pass by erlang shell as characters list list
restore(File) ->
    Name = filename:basename(File, ".xml"),
    %% convert unicode list to binary
    %% different characters encode compatible
    {XmlData, _} = max(xmerl_scan:file(to_list(File, list)), xmerl_scan:file(to_list(File, int))),
    %% trim first row (name row)
    SheetName = to_list_int(Name),
    SourceData = tl(work_book_data(XmlData, SheetName)),
    Validation = work_book_data_validation(XmlData, SheetName),
    Data = restore_data(XmlData, SourceData, Validation),
    %% convert unicode list to binary
    {to_list(Name, list), Data}.

restore_data(_, SourceData, []) ->
    SourceData;
restore_data(XmlData, SourceData, [{Column, Validation} | T]) ->
    SheetName = hd(string:tokens(Validation, "!")),
    ValidateData = [list_to_tuple(X) || X <- work_book_data(XmlData, SheetName)],
    {match, [Index]} = re:run(Column, "\\d+", [{capture, all, list}]),
    NewSourceData = restore_data_loop(SourceData, list_to_integer(Index), ValidateData, []),
    restore_data(XmlData, NewSourceData, T).

restore_data_loop([], _, _, List) ->
    List;
restore_data_loop([Row | T], Index, ValidateData, List) ->
    {Key, _} = lists:keyfind(lists:nth(Index, Row), 2, ValidateData),
    New = set(Index, Key, Row),
    restore_data_loop(T, Index, ValidateData, [New | List]).

%% replace element from list by pos
set(N, E, L) ->
    set(N, E, [], L).
set(1, E, R, [_ | T]) ->
    lists:reverse([E | R], T);
set(N, E, R, [H | T]) when N > 1 ->
    set(N - 1, E, [H | R], T).

%% read excel data
%% Sheet must characters list int
work_book_data(#xmlElement{name = 'Workbook', content = Content}, Sheet) ->
    hd([work_sheet(X) || X = #xmlElement{name = 'Worksheet', attributes = Attributes} <- Content, lists:keyfind(Sheet, #xmlAttribute.value, Attributes) =/= false]).

work_sheet(#xmlElement{name = 'Worksheet', content = Content}) ->
    hd([table(X) || X = #xmlElement{name = 'Table'} <- Content]).

table(#xmlElement{name = 'Table', content = Content}) ->
    [row(X) || X = #xmlElement{name = 'Row'} <- Content].

row(#xmlElement{name = 'Row', content = Content}) ->
    [cell(X) || X = #xmlElement{name = 'Cell'} <- Content].

cell(#xmlElement{name = 'Cell', content = Content}) ->
    hd([data(X) || X = #xmlElement{name = 'Data'} <- Content]).

data(#xmlElement{name = 'Data', content = Content, attributes = Attributes}) ->
    hd([text(X, Attributes) || X <- Content]).

%% read excel data validation
%% Sheet must characters list int
work_book_data_validation(#xmlElement{name = 'Workbook', content = Content}, Sheet) ->
    hd([work_sheet_data_validation(X) || X = #xmlElement{name = 'Worksheet', attributes = Attributes} <- Content, lists:keyfind(Sheet, #xmlAttribute.value, Attributes) =/= false]).

work_sheet_data_validation(#xmlElement{name = 'Worksheet', content = Content}) ->
    [data_validation(X) || X = #xmlElement{name = 'DataValidation'} <- Content].

data_validation(#xmlElement{name = 'DataValidation', content = Content}) ->
    Range = hd([range(X) || X = #xmlElement{name = 'Range'} <- Content]),
    Value = hd([value(X) || X = #xmlElement{name = 'Value'} <- Content]),
    {Range, Value}.

range(#xmlElement{name = 'Range', content = Content, attributes = Attributes}) ->
    hd([text(X, Attributes) || X <- Content]).

value(#xmlElement{name = 'Value', content = Content, attributes = Attributes}) ->
    hd([text(X, Attributes) || X <- Content]).

%% extract text and format
text(#xmlText{value = Value}, Attributes) ->
    format(Value, Attributes).

format(Text, Attributes) ->
    case lists:keyfind('ss:Type', #xmlAttribute.name, Attributes) of
        #xmlAttribute{value = "Number"} ->
            list_to_integer(Text);
        _ ->
            Text
    end.