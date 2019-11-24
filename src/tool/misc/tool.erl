%%%------------------------------------------------------------------
%%% @doc
%%% module tool
%%% @end
%%%------------------------------------------------------------------
-module(tool).
%% API
-export([default/2]).
-export([send_after/2, start_timer/2, cancel_timer/1]).
%%%==================================================================
%%% API functions
%%%==================================================================
%% @doc value default
-spec default(term(), term()) -> term().
default(undefined, Term) ->
    Term;
default([], Term) ->
    Term;
default(<<>>, Term) ->
    Term;
default(Term, _) ->
    Term.

%% @doc send after seconds
-spec send_after(Time :: non_neg_integer(), Message :: term()) -> reference().
send_after(Time, Message) ->
    erlang:send_after(Time * 1000, self(), Message).

%% @doc send after seconds
-spec start_timer(Time :: non_neg_integer(), Message :: term()) -> reference().
start_timer(Time, Message) ->
    erlang:start_timer(Time * 1000, self(), Message).

%% @doc cancel timer catch error
-spec cancel_timer(Timer :: reference()) -> non_neg_integer() | false.
cancel_timer(Timer) ->
    catch erlang:cancel_timer(Timer).

