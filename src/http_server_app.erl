-module(http_server_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
	openapi_server:start(http_server, #{ip=>{127,0,0,1}, port=>8080, net_opts=>[]}),
	http_server_sup:start_link().

stop(_State) ->
	ok.
