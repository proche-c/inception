all:
	mkdir -p /home/proche-c/data/mysql
	mkdir -p /home/proche-c/data/wordpress
	docker compose -f ./srcs/docker-compose.yml up -d --build

down:
	docker compose -f ./srcs/docker-compose.yml down

clean:
	docker compose -f ./srcs/docker-compose.yml down -v
	docker system prune --all --force
	docker volume prune --all --force
	docker network rm proche-cnet

fclean: clean
	sudo rm -rf /home/proche-c/data

.PHONY: all down clean fclean
