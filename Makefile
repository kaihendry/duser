NAME = $(shell basename $(PWD))

up: down
	docker compose up --build

shell: up
	docker exec -it $(NAME)-alpine-1 /bin/sh

down:
	docker compose down -v --remove-orphans

test:
	docker run --network duser_default  --rm alpine/curl -fsSL http://manager:8080
