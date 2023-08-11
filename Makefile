NAME = $(shell basename $(PWD))

up:
	docker-compose up -d --build

shell: up
	docker exec -it $(NAME)-alpine-1 /bin/sh

down:
	docker-compose down -v
