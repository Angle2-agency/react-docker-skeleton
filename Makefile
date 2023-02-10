include .env

all: | ${APP_ENV}
dev: | start-docker
prod: | start-docker

start-docker:
	docker-compose up -d --build

restart-docker:
	docker-compose down && docker-compose up -d --build

down-docker:
	docker-compose down

install-packages:
	docker-compose exec frontend npm i

start-dev:
	docker-compose exec frontend npm run start

start-prod:
	docker-compose exec frontend npm run build
