NAME = $(shell basename $(PWD))

up: down
	docker compose up --wait --detach --quiet-pull
	curl -f http://localhost:8080

shell: up
	docker exec -it $(NAME)-alpine-1 /bin/sh

down:
	docker compose down -v --remove-orphans

test:
	docker run --network maeve-tues --rm alpine/curl -fsSL http://manager:8080
