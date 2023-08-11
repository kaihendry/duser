NAME = $(shell basename $(PWD))

shell: up
	docker exec -it $(NAME)-alpine-1 /bin/sh

up:
	docker-compose up -d --build

down:
	docker-compose down -v
