-module(account_protocol).
-export([read/2, write/2]).


read(10000, <<>>) ->
    {ok, []};

read(10001, <<ServerId:16, AccountLength:16, Account:AccountLength/binary>>) ->
    {ok, [ServerId, Account]};

read(10002, <<ServerId:16, AccountLength:16, Account:AccountLength/binary>>) ->
    {ok, [ServerId, Account]};

read(10003, <<AccountLength:16, Account:AccountLength/binary, RoleNameLength:16, RoleName:RoleNameLength/binary, ServerId:16, Sex:8, Classes:8, ChannelId:16, DeviceIdLength:16, DeviceId:DeviceIdLength/binary, MacLength:16, Mac:MacLength/binary, DeviceTypeLength:16, DeviceType:DeviceTypeLength/binary>>) ->
    {ok, [Account, RoleName, ServerId, Sex, Classes, ChannelId, DeviceId, Mac, DeviceType]};

read(Code, Binary) ->
    {error, Code, Binary}.



write(10000, []) ->
    {ok, protocol:pack(10000, <<>>)};

write(10001, Result) ->
    {ok, protocol:pack(10001, <<(text(10001, Result))/binary>>)};

write(10002, Result) ->
    {ok, protocol:pack(10002, <<(text(10002, Result))/binary>>)};

write(10003, Result) ->
    {ok, protocol:pack(10003, <<(text(10003, Result))/binary>>)};

write(Code, Content) ->
    {error, Code, Content}.



text(10001, duplicate) ->
    <<12:16, "重复登录"/utf8>>;
text(10001, no_such_name) ->
    <<18:16, "没有此用户名"/utf8>>;
text(10001, permission_denied) ->
    <<12:16, "权限不够"/utf8>>;
text(10001, refuse) ->
    <<12:16, "禁止登录"/utf8>>;
text(10001, server_id_not_match) ->
    <<20:16, "服务器ID不匹配"/utf8>>;
text(10001, server_update) ->
    <<15:16, "服务器更新"/utf8>>;
text(10002, no_such_name) ->
    <<18:16, "没有此用户名"/utf8>>;
text(10002, server_id_not_match) ->
    <<20:16, "服务器ID不匹配"/utf8>>;
text(10003, duplicate) ->
    <<12:16, "名字重复"/utf8>>;
text(10003, length) ->
    <<12:16, "长度不对"/utf8>>;
text(10003, not_utf8) ->
    <<12:16, "未知字符"/utf8>>;
text(10003, sensitive) ->
    <<15:16, "包含敏感词"/utf8>>;
text(_, ok) ->
    <<0:16>>;
text(_, Reason) ->
    protocol:write_bit_string(type:to_binary(Reason)).

