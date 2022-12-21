start-dev-build:
	docker-compose -f docker-compose-dev.yml up --build

start-dev:
	docker-compose -f docker-compose-dev.yml up

test:
	docker exec -it frontend-web-1 npm run test

build-prod:
	# docker build -t frontend-web-prod .
	docker-compose up --build

start-prod:
	# docker run -p 3000:80 frontend-web-prod
	docker-compose up