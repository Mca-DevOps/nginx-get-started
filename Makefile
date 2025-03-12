.PHONY: help setup
.DEFAULT_GOAL = help



help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

setup: ## Install the project's dependencies
	@echo "\nInstalling python dependencies...\n"
	pip install -r requirements.txt

