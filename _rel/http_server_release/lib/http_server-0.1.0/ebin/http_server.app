{application, 'http_server', [
	{description, "An Erlang REST API built using cowboy and OPEN API"},
	{vsn, "0.1.0"},
	{modules, ['api_default_logic_handler','http_server_app','http_server_sup','openapi_api','openapi_auth','openapi_logic_handler','openapi_pet_handler','openapi_router','openapi_server','openapi_store_handler','openapi_user_handler','openapi_utils']},
	{registered, [http_server_sup]},
	{applications, [kernel,stdlib,cowboy,jesse,jsx]},
	{mod, {http_server_app, []}},
	{env, []}
]}.