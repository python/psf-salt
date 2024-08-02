PIP_COMMAND 	:= $(shell command -v uv >/dev/null 2>&1 && echo "uv pip" || echo "pip")
ENV_PREFIX		=  .venv/bin/

docs-install: 										## Install docs dependencies
	@echo "=> Installing documentation dependencies"
	@$(PIP_COMMAND) install -r docs/requirements.txt
	@echo "=> Installed documentation dependencies"

docs-clean: 										## Dump the existing built docs
	@echo "=> Cleaning documentation build assets"
	@rm -rf docs/_build
	@echo "=> Removed existing documentation build assets"

docs-serve: docs-clean docs-install							## Serve the docs locally
	@echo "=> Serving documentation"
	@$(ENV_PREFIX)sphinx-autobuild docs/ docs/_build/ -j auto --watch docs/
