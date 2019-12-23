@echo off
chcp 65001>nul

SetLocal
:: script path
set script=%~dp0

:: jump
if "%1" == "" goto make_debug
if "%1" == "debug" (if "%2" == "" goto make_debug)
if "%1" == "debug" goto make_debug_single
if "%1" == "release" (if "%2" == "" goto make_release)
if "%1" == "release" goto make_release_single
if "%1" == "clean" goto clean
if "%1" == "maker" goto maker
if "%1" == "beam" goto beam
if "%1" == "pt" goto protocol
if "%1" == "protocol" goto protocol
if "%1" == "excel" (if "%2" == "table" goto table)
if "%1" == "table" goto table
if "%1" == "excel" (if "%2" == "xml" goto xml)
if "%1" == "xml" goto xml
if "%1" == "record" goto script
if "%1" == "sql" goto script
if "%1" == "data" goto script
if "%1" == "lua" goto script
if "%1" == "json" goto script
if "%1" == "log" goto script
if "%1" == "word" goto script
if "%1" == "key" goto script
if "%1" == "config" goto script
if "%1" == "router" goto script
if "%1" == "lsc" goto script
if "%1" == "map" goto script
goto helper

:make_debug
:: make all (default)
:: for /f "delims=." %%x in ('erl -noinput -eval "io:format(\"~w\", [list_to_atom(erlang:system_info(otp_release))]),erlang:halt()."') do (
::     if not defined OTP_RELEASE set OTP_RELEASE=%%x
:: )
:: for /f "delims=\\" %%x in ('erl -noinput -eval "io:format(\"~w\", [list_to_atom(erlang:system_info(version))]),erlang:halt()."') do (
::     if not defined OTP_VERSION set OTP_VERSION=%%x
:: )
:: otp 17 or earlier, referring to built-in type queue as a remote type; please take out the module name
:: for /f "tokens=6" %%x in ('cmd /C "erl +V 2>&1"') do (
::     for /f "delims=. tokens=1" %%y in ("%%x") do (
           :: # remote type option
::         if %%x geq 6 set REMOTE_VERSION=,{d,otp}
::     )
:: )
:: set OPTIONS=-env ERL_COMPILER_OPTIONS [{d,'RELEASE',%OTP_RELEASE%},{d,'VERSION',%OTP_VERSION%}%REMOTE_VERSION%]

cd "%script%\..\debug\"
:: erl %OPTIONS% -make
erl -make
goto end

:make_debug_single
:: project root directory
cd "%script%\..\..\"
:: erlc -I include -o beam +debug_info -D DEBUG %%x
for /f %%x in ('where /r src %2.erl 2^>nul') do (
    if not defined FILE set FILE=%%x
)
:: show message
if "%FILE%"=="" (
    echo %2.erl: no such file or directory
) else (
    erlc -I include -o beam +debug_info -D DEBUG %FILE%
    echo ok
)

goto end

:make_release
:: make script directory
cd "%script%\..\release\"
erl -make
erl -noinput -eval "beam_lib:strip_files(filelib:wildcard(\"../../beam/*.beam\")),erlang:halt()."
:: execute reload beam 
:: usr abs path %~f0 beam compile
"../batch/%~nx0" beam compile
goto end

:make_release_single
:: project root directory
cd "%script%\..\..\"
:: windows hipe(high performance erlang) native code not support
:: erlc -I include -o beam -Werror %%x
for /f %%x in ('where /r src %2.erl 2^>nul') do (
    if not defined FILE set FILE=%%x
)

:: show message
if "%FILE%"=="" (
    echo %2.erl: no such file or directory
) else (
    erlc -I include -o beam -Werror %FILE%    
    erl -noinput -eval "beam_lib:strip_files(filelib:wildcard(\"beam/%2.beam\")),erlang:halt()."
    echo ok
)

goto end

:clean
:: clean all beam
del "%script%\..\..\beam\*.beam"
goto end

:maker
cd "%script%\..\make\"
erl -make
erl -noinput -eval "beam_lib:strip_files(filelib:wildcard(\"../../beam/*maker.beam\")),erlang:halt()."
goto end

:beam
if "%2"=="" (
    :: remove old head(module/compile/include) data
    PowerShell "$in = (Get-Content %script%\..\\..\src\tool\extension\user_default.erl -encoding UTF8 | Select-String -Pattern '^-module.*\.|^-compile.*\.|^-include.*\.' -NotMatch); Set-Content '%script%\..\\..\src\tool\extension\user_default.erl' $in -encoding UTF8;"
    :: build write new data
    PowerShell "$lf=$('' | Out-String);$head='-module(user_default).'+$lf+'-compile(nowarn_export_all).'+$lf+'-compile(export_all).'+$lf; foreach ($name in (Get-ChildItem -Name 'include')) { $head+=('-include(\"../../../include/'+$name+'\").'+$lf) }; $tail=(Get-Content %script%\..\\..\src\tool\extension\user_default.erl -encoding UTF8); Set-Content '%script%\..\\..\src\tool\extension\user_default.erl' $head.SubString(0, $head.Length - 2), $tail -encoding UTF8;"
    :: remove utf8 bom and convert cr/lf(dos) to lf(unix)
    PowerShell "$in = ([System.IO.File]::ReadAllText('%script%\..\\..\src\tool\extension\user_default.erl', [System.Text.UTF8Encoding]($False)) -replace \"`r\"); [System.IO.File]::WriteAllText('%script%\..\\..\src\tool\extension\user_default.erl', $in, [System.Text.UTF8Encoding]($False));"
)
:: remove old beam file
del /q "%script%\..\..\beam\user_default.beam"
:: recompile it with debug info mode (beam abstract code contain)
erlc +debug_info -o "%script%/../../beam/" "%script%/../../src/tool/extension/user_default.erl"
goto end

:protocol
escript "%script%\..\make\protocol\protocol_script_%2.erl" %3 %4 %5 %6 %7 %8 %9
escript "%script%\..\make\script\router_script.erl"
goto end

:xml
:table
:: if "%1"=="table" (set file=%2)
:: if "%1"=="excel" (set file=%3)
:: SetLocal EnableDelayedExpansion
:: earlier then otp 17.0 unicode characters problem
:: windows console pass utf8 characters convert to utf8 byte list
:: for /f %%I in ('PowerShell "[Text.Encoding]::UTF8.GetBytes(\"%file%\")"') do (set encode=!encode! %%I)
:: echo escript %script%\..\make\script\excel_script.erl %1 %2 %3 %4 %5 %6 %7 %8 %9 -encode %encode%
escript "%script%\..\make\script\excel_script.erl" %1 %2 %3 %4 %5 %6 %7 %8 %9
goto end

:script
escript "%script%\..\make\script\%1_script.erl" %2 %3 %4 %5 %6 %7 %8 %9
goto end

:helper
echo usage: compile all file by default
echo     debug module                                      make with debug mode
echo     release module                                    make with release mode
echo     clean                                             remove all beam
echo     maker                                             compile maker
echo     beam                                              update beam abstract code
echo     pt/protocol name                                  make protocol file
echo     excel [table^|xml] [table-name^|file-name]          convert/restore table/xml to xml/table
echo     xml table-name                                    convert table to xml, same as excel xml table-name
echo     table file-name                                   restore xml to table, same as excel table file-name
echo     record name                                       make record file
echo     sql name                                          make sql file
echo     data name                                         make erl data configure file
echo     lua name                                          make lua data configure file
echo     json name                                         make json data configure file
echo     log name                                          make log file
echo     word                                              make sensitive word file
echo     key [-number^|-type^|-prefix]                       make active key
echo     config                                            make erlang application config interface
echo     router                                            make protocol route
echo     lsc                                               make load/save/clean code
:: end target
:end
EndLocal
