-module(api_default_logic_handler).

-behaviour(openapi_logic_handler).

-export([handle_request/3]).
-export([authorize_api_key/2]).

-spec authorize_api_key(OperationID :: openapi_api:operation_id(), ApiKey :: binary()) -> {true, #{}}.
authorize_api_key(_, _) -> {true, #{}}.

-spec handle_request(OperationID :: openapi_api:operation_id(),Req :: cowboy_req:req(),Context :: #{}) ->
    {Status :: cowboy:http_status(), Headers :: cowboy:http_headers(), Body :: jsx:json_term()}.
handle_request('GetInventory', _Req, _Context) ->
    List = [#{name => list_to_binary("Eukanuba Adult Large Breed Dog Food"), price => list_to_binary("R767.97"), brand => list_to_binary("Eukanuba")},
    #{name => list_to_binary("Eukanuba Adult Large Breed Dog Food - Lamb & Rice"), price => list_to_binary("R789.99"), brand => list_to_binary("Eukanuba")},
    #{name => list_to_binary("Eukanuba Large Breed Puppy Food"), price => list_to_binary("R349.50"), brand => list_to_binary("Eukanuba")},
    #{name => list_to_binary("Royal Canin Labrador Retriever Adult Dog Food"), price => list_to_binary("R1039.99"), brand => list_to_binary("Royal Canin")},
    #{name => list_to_binary("Royal Canin Maxi 5+ Adult Dog Food"), price => list_to_binary("R1095.99"), brand => list_to_binary("Royal Canin")},
    #{name => list_to_binary("Royal Canin Maxi Digestive Care Adult Dog Food"), price => list_to_binary("R854.99"), brand => list_to_binary("Royal Canin")}],

    {200, #{<<"content-type">> => <<"application/json">>}, List};

handle_request(OperationID, Req, Context) ->
    error_logger:info_msg("Got not implemented request to process: ~p~n",[{OperationID, Req, Context}]),
    {200, Req, Context}.
