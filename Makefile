precommit: fmt lint test test_luajit

test:
	asdf plugin test plugin . --asdf-tool-version 5.5.0

test_luajit:
	asdf plugin test plugin . --asdf-tool-version LuaJIT-2.0.5

fmt:
	shfmt --language-dialect bash --indent 2 --write bin/*

lint:
	shellcheck --shell bash --external-sources bin/*

.PHONY: precommit test test_luajit lint
