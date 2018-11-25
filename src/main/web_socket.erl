%%%-------------------------------------------------------------------
%%% @doc
%%% module reader
%%% @end
%%%-------------------------------------------------------------------
-module(web_socket).
-include("common.hrl").
-include("socket.hrl").
-export([
        handle_http_head/2,
        handle_html5_head/2,
        handle_html5_body_length/2,
        unmask/2,
        frames/2
    ]).

-record(http_head, {method, path, version, headers}).

%% ====================================================================
%% API functions
%% ====================================================================
%% @doc 区分h5
handle_http_head(Data, State) ->
    HttpHead = parse_http_head(type:to_list(Data)),
    Value = get_header_value("Upgrade", HttpHead),
    %% 确认websocket
    case Value =/= undefined andalso string:to_lower(Value) =:= "websocket" of
        true ->
            SecKey = get_header_value("Sec-WebSocket-Key", HttpHead),
            SecKey1 = get_header_value("Sec-WebSocket-Key1", HttpHead),
            SecKey2 = get_header_value("Sec-WebSocket-Key2", HttpHead),
            io:format("receive:~p   ~p   ~p~n", [SecKey, SecKey1, SecKey2]),
            if
                SecKey =/= undefined ->
                    %% ws
                    hand_shake(State, SecKey);
                SecKey1 =/= undefined andalso SecKey2 =/= undefined ->
                    %% wss
                    hand_shake(State, HttpHead, SecKey1, SecKey2);
                true ->
                    {stop, {ws_handshake, HttpHead}, State}
            end;
        _ ->
            {stop, not_websocket, State}
    end.

%% h5协议头
handle_html5_head(<<_Fin:1, _Rsv:3, _OpCode:4, _Mask:1, 127:7>>, State) ->
    {read, 12, ?HEART_TIMEOUT, State#client{state = wait_html5_body_length, last_h5_length = 127}};
handle_html5_head(<<_Fin:1, _Rsv:3, _OpCode:4, _Mask:1, 126:7>>, State) ->
    {read, 6, ?HEART_TIMEOUT, State#client{state = wait_html5_body_length, last_h5_length = 126}};
handle_html5_head(<<_Fin:1, _Rsv:3, _OpCode:4, _Mask:1, Length:7>>, State) ->
    {read, 4, ?HEART_TIMEOUT, State#client{state = wait_html5_body_length, last_h5_length = Length}};
handle_html5_head(_, State) ->
    {stop, ?WAIT_H5_HEAD_ERROR, State}.

%% h5 掩码，长度读取（安全验证）
handle_html5_body_length(<<BodyLength:64, Masking:4/binary>>, State = #client{last_h5_length = 127}) when BodyLength >= 4 ->
    {read, BodyLength, ?TCP_TIMEOUT, State#client{state = wait_html5_body, last_h5_length = BodyLength, masking_h5 = Masking}};
handle_html5_body_length(<<BodyLength:16, Masking:4/binary>>, State = #client{last_h5_length = 126}) when BodyLength >= 4  ->
    {read, BodyLength, ?TCP_TIMEOUT, State#client{state = wait_html5_body, last_h5_length = BodyLength, masking_h5 = Masking}};
handle_html5_body_length(<<Masking:4/binary>>, State = #client{last_h5_length = BodyLength}) when BodyLength >= 4  ->
    {read, BodyLength, ?TCP_TIMEOUT, State#client{state = wait_html5_body, masking_h5 = Masking}};
handle_html5_body_length(_, State) ->
    {stop, ?WAIT_H5_HEAD_LENGTH_ERROR, State}.

%% @doc 掩码计算
unmask(Payload, Masking) ->
    unmask(Payload, Masking, <<>>).
unmask(Payload, Masking = <<MA:8, MB:8, MC:8, MD:8>>, Acc) ->
    case size(Payload) of
        0 ->
            Acc;
        1 ->
            <<A:8>> = Payload,
            <<Acc/binary, (MA bxor A)>>;
        2 ->
            <<A:8, B:8>> = Payload,
            <<Acc/binary, (MA bxor A), (MB bxor B)>>;
        3 ->
            <<A:8, B:8, C:8>> = Payload,
            <<Acc/binary, (MA bxor A), (MB bxor B), (MC bxor C)>>;
        _ ->
            <<A:8, B:8, C:8, D:8, Rest/binary>> = Payload,
            Acc1 = <<Acc/binary, (MA bxor A), (MB bxor B), (MC bxor C), (MD bxor D)>>,
            unmask(Rest, Masking, Acc1)
    end.

%% @doc 帧计算
frames(<<>>, Frames) ->
    lists:reverse(Frames);
frames(<<0, T/binary>>, Frames) ->
    {Frame, Rest} = frame_parse(T, <<>>),
    frames(Rest, [Frame | Frames]).
frame_parse(<<255, Rest/binary>>, Buffer) ->
    {Buffer, Rest};
frame_parse(<<H, T/binary>>, Buffer) ->
    frame_parse(T, <<Buffer/binary, H>>).

%% ====================================================================
%% Internal functions
%% ====================================================================
%% send packet
send(#client{socket_type = ssl, socket = Socket}, Binary) ->
    ssl:send(Socket, Binary);
send(#client{socket_type = gen_tcp, socket = Socket}, Binary) ->
    port_command(Socket, Binary).


%% websocket 挥手
hand_shake(State, SecKey) ->
    Hash = crypto:hash(sha, SecKey ++ "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"),
    Encode = base64:encode_to_string(Hash),
    Binary = [
        <<"HTTP/1.1 101 Switching Protocols\r\n">>,
        <<"Upgrade: websocket\r\n">>,
        <<"Connection: Upgrade\r\n">>,
        <<"Sec-WebSocket-Accept: ">>, Encode, <<"\r\n">>,
        <<"\r\n">>
    ],
    send(State, Binary),
    {read, 2, ?TCP_TIMEOUT, State#client{state = wait_html5_head, protocol_type = ?PROTOCOL_TYPE_WS_HYBI}}.
hand_shake(State = #client{socket_type = SocketType}, HttpHead, SecKey1, SecKey2) ->
    case SocketType of
        ssl ->
            Scheme = "wss://";
        gen_tcp ->
            Scheme = "ws://"
    end,
    Origin = get_header_value("Origin", HttpHead),
    Host = get_header_value("Host", HttpHead),
    Path = HttpHead#http_head.path,
    Body = get_header_value(body, HttpHead),
    Ikey1 = [D || D <- SecKey1, $0 =< D, D =< $9],
    Ikey2 = [D || D <- SecKey2, $0 =< D, D =< $9],
    Blank1 = length([D || D <- SecKey1, D =:= 32]),
    Blank2 = length([D || D <- SecKey2, D =:= 32]),
    Part1 = erlang:list_to_integer(Ikey1) div Blank1,
    Part2 = erlang:list_to_integer(Ikey2) div Blank2,
    BodyBin = list_to_binary(Body),
    CKey = <<Part1:4/big-unsigned-integer-unit:8, Part2:4/big-unsigned-integer-unit:8, BodyBin/binary>>,
    Challenge = erlang:md5(CKey),
    Location = lists:concat([Scheme, Host, Path]),
    Handshake = [
        <<"HTTP/1.1 101 WebSocket Protocol Handshake\r\n">>,
        <<"Connection: Upgrade\r\n">>,
        <<"Upgrade: WebSocket\r\n">>,
        <<"Sec-WebSocket-Origin: ">>, Origin, <<"\r\n">>,
        <<"Sec-WebSocket-Location: ">>, Location, <<"\r\n\r\n">>,
        Challenge
    ],
    send(State, Handshake),
    {read, 0, ?TCP_TIMEOUT, State#client{state = wait_html5_body, protocol_type = ?PROTOCOL_TYPE_WS_HIXIE}}.

%% 获取协议头内容
get_header_value(Key, #http_head{headers = Headers}) ->
    case lists:keyfind(Key, 1, Headers) of
        false ->
            undefined;
        {Key, Value} ->
            Value
    end.

%% 解析http头
parse_http_head(Data) ->
    {Headers, _, HttpHead} = do_parse_http_head(Data),
    [Path, Version] = string:tokens(HttpHead, " "),
    #http_head{
        path = Path,
        version = Version,
        headers = Headers
    }.
do_parse_http_head([]) ->
    {[], [], []};
do_parse_http_head([$\r, $\n | T]) ->
    {Headers, Key, Value} = do_parse_http_head(T),
    case Key of
        "" when Headers =:= [], Value =/= "" ->
            {[{body, Value} | Headers], "", ""};
        "" ->
            {Headers, Key, Value};
        _ ->
            {[{Key, Value} | Headers], "", ""}
    end;
do_parse_http_head([$\n, $\n | T]) ->
    {Headers, Key, Value} = do_parse_http_head(T),
    case Key of
        "" ->
            {Headers, Key, Value};
        _ ->
            {[{Key, Value} | Headers], "", ""}
    end;
do_parse_http_head([C, $:, $\  | T]) ->
    {Headers, _Key, Value} = do_parse_http_head(T),
    {Headers, [C], Value};
do_parse_http_head([C | T]) ->
    {Headers, Key, Value} = do_parse_http_head(T),
    case Key of
        "" ->
            {Headers, Key, [C|Value]};
        _ ->
            {Headers, [C|Key], Value}
    end.

%%% ws请求样例
%% <<"GET / HTTP/1.1\r\n
%% Host: 192.168.2.30:8974\r\n
%% Connection: Upgrade\r\n
%% Pragma: no-cache\r\n
%% Cache-Control: no-cache\r\n
%% Upgrade: websocket\r\n
%% Origin: http://www.blue-zero.com\r\n
%% Sec-WebSocket-Version: 13\r\n
%% User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\r\n
%% Accept-Encoding: gzip, deflate\r\n
%% Accept-Language: zh-CN,zh;q=0.9\r\n
%% Sec-WebSocket-Key: dxK7B1g87DfGyIvJ+R4n5w==\r\n
%% Sec-WebSocket-Extensions: permessage-deflate; client_max_window_bits
%% \r\n\r\n">>



