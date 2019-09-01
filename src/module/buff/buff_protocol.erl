-module(buff_protocol).
-export([read/2, write/2]).
-include("buff.hrl").


read(11801, <<>>) ->
    {ok, []};

read(Code, Binary) ->
    {error, Code, Binary}.



write(11801, [List]) ->
    {ok, protocol:pack(11801, <<(length(List)):16, <<<<BuffId:32, EndTime:32, Overlap:16>> || #buff{buff_id = BuffId, end_time = EndTime, overlap = Overlap} <- List>>/binary>>)};

write(Code, Content) ->
    {error, Code, Content}.
