stop:
	docker compose -f srcs/docker-compose.yml stop 

restart:
	docker compose -f srcs/docker-compose.yml restart

build:
	docker compose -f srcs/docker-compose.yml build 
up:
	docker compose -f ./srcs/docker-compose.yml up 

down : 
	docker compose ./srcs/docker-compose.yml  down

clean:
	docker system prune -a
	docker volume rm srcs_db
	docker volume rm srcs_wordpress




	docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q) 2>/dev/null