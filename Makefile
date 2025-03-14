.PHONY: help setup
.DEFAULT_GOAL = help



help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

setup: ## Install the project's dependencies
	@echo "\nInstalling python dependencies...\n"
	pip install -r requirements.txt

docker_build: ## Build the Dockerfile
	@echo "\nBuilding the Dockerfile...\n"
	@docker build --no-cache --progress=plain -t nginx_get_started_webapp:v1.0.0 .

docker_run: ## Run the docker-compose containers
	@docker pull nginx:latest
	@echo "\nRunning all docker containers...\n"
	@docker-compose up -d

docker_stop: ## Stop the docker-compose containers
	@echo "\nStopping all docker containers...\n"
	@docker-compose down
