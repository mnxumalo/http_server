PROJECT = http_server
PROJECT_DESCRIPTION = An Erlang REST API built using cowboy and OPEN API
PROJECT_VERSION = 0.1.0

DEPS = cowboy jesse jsx
	dep_cowboy_commit = 2.5.0
	dep_jesse_commit = 1.5.5
	dep_jsx_commit = 2.9.0
	DEP_PLUGINS = cowboy jesse jsx

	PACKAGES += rfc3339
	pkg_rfc3339_name = rfc3339
	pkg_rfc3339_description = an erlang/elixir rfc3339 lib
	pkg_rfc3339_homepage = https://github.com/talentdeficit/rfc3339
	pkg_rfc3339_fetch = git
	pkg_rfc3339_repo = https://github.com/talentdeficit/rfc3339
	pkg_rfc3339_commit = master

include erlang.mk
