shell:
	docker exec -it duser-alpine-1 /bin/sh

up:
	docker-compose up -d

down:
	docker-compose down -v
