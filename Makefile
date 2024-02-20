all: build up

build:
	docker-compose -f ./srcs/docker-compose.yml build
up:
	docker-compose -f ./srcs/docker-compose.yml up -d

down : 
	docker-compose -f ./srcs/docker-compose.yml down

stop : 
	docker-compose -f ./srcs/docker-compose.yml stop

start : 
	docker-compose -f ./srcs/docker-compose.yml start

re: stop down up