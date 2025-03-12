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

docker_run: ## Run the Dockerfile
	@echo "\nRunning the docker container...\n"
	@docker run -itd -p 3000:3000 --name nginx_get_started_webapp_container nginx_get_started_webapp:v1.0.0
