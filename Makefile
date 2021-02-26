COMPOSE_DEV=./docker/docker-compose.dev.yaml

build:
	docker build -f ./docker/Dockerfile -t content-back .

up-dev:
	docker-compose -f $(COMPOSE_DEV) up --build -d

down-dev:
	docker-compose -f $(COMPOSE_DEV) down

php-shell-dev:
	docker-compose -f $(COMPOSE_DEV) exec php bash
