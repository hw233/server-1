#!/usr/bin/env escript
-compile(export_all).

main([]) ->
    make();
main(["clean"]) ->
    clean();
main(["maker"]) ->
    maker();
main(["beam"]) ->
    beam();
main(["pt", File]) ->
    main(["protocol", File]);
main(["protocol", Name | T]) ->
    protocol(Name, T);
main([Name | T]) ->
    script(Name, T).

make() ->
    file:set_cwd(script_path()),
    make:all(),
    ok.

clean() ->
    file:set_cwd(script_path() ++ "../beam"),
    Cmd = os(remove),
    os:cmd(Cmd ++ "*.beam"),
    ok.

maker() ->
    file:set_cwd(script_path() ++ "../src/make/"),
    make:all(),
    ok.

beam() ->
    Path = script_path(),
    os:cmd("escript " ++ Path ++ "../src/debug/user_default.erl update_include"),
    os:cmd("erlc +debug_info -o " ++ Path ++ "../beam/ " ++ Path ++ "../src/debug/user_default.erl"),
    ok.

protocol(Name, T) ->
    Path = script_path(),
    Cmd = lists:flatten(lists:concat(["escript ", Path, "../src/make/protocol/protocol_script_", Name, ".erl ", T])),
    os:cmd(Cmd),
    ok.

script(Name, T) ->
	Path = script_path(),
	Cmd = lists:flatten(lists:concat(["escript ", Path, "../src/make/script/", Name, "_script.erl ", T])),
	os:cmd(Cmd),
	ok.

script_path() ->
    Name = escript:script_name(),
    string:sub_string(Name, 1, max(string:rstr(Name, "/"), string:rstr(Name, "\\"))).

os(Type) ->
    os(Type, []).
os(Type, Args) ->
    os(Type, Args, os:type()).
os(clear, _, {win32, _}) ->
    spawn(fun() -> os:cmd("powershell clear") end);
os(clear, _, {unix, _}) ->
    spawn(fun() -> io:format("\e[H\e[J") end);
os(list, _, {win32, _}) ->
    "powershell ls ";
os(list, _, {unix, _}) ->
    "ls -l ";
os(remove, _, {win32, _}) ->
    "del ";
os(remove, _, {unix, _}) ->
    "rm ";
os(line, _, {win32, _}) ->
    "\r\n";
os(line, _, {unix, _}) ->
    "\n";
os(path, [], {win32, _}) ->
    $\\;
os(path, [], {unix, _}) ->
    $/;
os(path, [list], {win32, _}) ->
    "\\";
os(path, [list], {unix, _}) ->
    "/";
os(path, [Path], {win32, _}) ->
    lists:foldr(fun($/, A) -> [$\\ | A];(C, A) -> [C | A] end, [], Path);
os(path, [Path], {unix, _}) ->
    lists:foldr(fun($\\, A) -> [$/ | A];(C, A) -> [C | A] end, [], Path);
os(where, [Path, Target], {win32, _}) ->
    lists:concat(["chcp 65001>nul && where /R ", os(path, [Path]), " ", Target]);
os(where, [Path, Target], {unix, _}) ->
    lists:concat(["find ", os(path, [Path]), " -name ", Target]).