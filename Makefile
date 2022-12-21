start-dev-build:
	docker-compose up --build

start-dev:
	docker-compose up

test:
	docker exec -it frontend-web-1 npm run test

build-prod:
	docker build -t frontend-web-prod .

start-prod:
	docker run -p 3000:80 frontend-web-prod