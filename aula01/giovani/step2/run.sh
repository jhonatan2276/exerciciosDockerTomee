docker rm -f $(docker ps -a -q)

docker run -d --name mysql-giovani \
	-h mysql-giovani \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=mysql \
	-e MYSQL_DATABASE=soujava \
	mysql-giovani

sleep 3

docker run -d --name tomee-giovani \
	-h tomee-giovani \
	--link mysql-giovani:mysql-giovani \
        -p 8080:8080 tomee-giovani
