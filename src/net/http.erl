%%%------------------------------------------------------------------
%%% @doc
%%% module http reader
%%% @end
%%%------------------------------------------------------------------
-module(http).
%% API
-export([parse_content/1]).
-export([get_method/1, get_uri/1, get_version/1, get_header_field/2, get_body/1]).
%% Includes
-include("socket.hrl").
%%%==================================================================
%%% API functions
%%%==================================================================
%% @doc 解析http协议
-spec parse_content(binary()) -> #http{}.
parse_content(Packet) ->
    {[Method, Uri, Version | _], Rest} = parse_header(Packet, <<>>, []),
    {Fields, Body} = parse_header_field(Rest, <<>>, <<>>, []),
    #http{method = Method, uri = Uri, version = Version, fields = Fields, body = Body}.

%% @doc 获取请求方法
-spec get_method(#http{}) -> binary().
get_method(#http{method = Method}) ->
    Method.

%% @doc 获取路径
-spec get_uri(#http{}) -> binary().
get_uri(#http{uri = Uri}) ->
    Uri.

%% @doc 获取版本
-spec get_version(#http{}) -> binary().
get_version(#http{version = Version}) ->
    Version.

%% @doc 获取头部内容
-spec get_header_field(Key :: string(), #http{}) -> binary().
get_header_field(Key, #http{fields = Fields}) ->
    element(2, listing:key_find(Key, 1, Fields, {<<>>, <<>>})).

%% @doc 获取数据主体
-spec get_body(#http{}) -> binary().
get_body(#http{body = Body}) ->
    Body.

%%%==================================================================
%%% Internal functions
%%%==================================================================
%% 解析http方法, 资源路径, 版本信息
parse_header(<<>>, Segment, Result) ->
    {lists:reverse([Segment | Result]), <<>>};
parse_header(<<"\r\n", Rest/binary>>, Segment, Result) ->
    {lists:reverse([Segment | Result]), Rest};
parse_header(<<"HTTP/", Rest/binary>>, _, Result) ->
    parse_header(Rest, <<>>, Result);
parse_header(<<"/", Rest/binary>>, _, Result) ->
    parse_header(Rest, <<>>, Result);
parse_header(<<" ", Rest/binary>>, Segment, Result) ->
    parse_header(Rest, <<>>, [Segment | Result]);
parse_header(<<Byte:8, Rest/binary>>, Segment, Result) ->
    parse_header(Rest, <<Segment/binary, Byte:8>>, Result).

%% 解析http字段
parse_header_field(<<>>, _, _, Result) ->
    {Result, <<>>};
parse_header_field(<<"\r\n\r\n", Rest/binary>>, Segment, Key, Result) ->
    %% header/body separator
    {lists:reverse([{Key, Segment} | Result]), Rest};
parse_header_field(<<"\r\n", Rest/binary>>, Segment, Key, Result) ->
    %% line separator
    parse_header_field(Rest, <<>>, <<>>, [{Key, Segment} | Result]);
parse_header_field(<<":", Rest/binary>>, Segment, <<>>, Result) ->
    %% key value separator
    parse_header_field(Rest, <<>>, Segment, Result);
parse_header_field(<<":", Rest/binary>>, Segment, Key, Result) ->
    %% this is not a key value separator when key is not empty
    parse_header_field(Rest, <<Segment/binary, ":":8>>, Key, Result);
parse_header_field(<<" ", Rest/binary>>, Segment, <<>>, Result) ->
    %% trim space if key empty
    parse_header_field(Rest, Segment, <<>>, Result);
parse_header_field(<<" ", Rest/binary>>, <<>>, Key, Result) ->
    %% trim space if value empty
    parse_header_field(Rest, <<>>, Key, Result);
parse_header_field(<<Byte:8, Rest/binary>>, Segment, Key, Result) ->
    parse_header_field(Rest, <<Segment/binary, Byte:8>>, Key, Result).
