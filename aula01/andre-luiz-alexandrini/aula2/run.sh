docker rm -f $(docker ps -a -q)

docker run -d --name mysql-andre \
	-h mysql-andre \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=andre \
	-e MYSQL_DATABASE=andre \
	mysql-andre

sleep 3

docker run -d --name tomee-andre \
	-h tomee-andre \
	--link mysql-andre:mysql-andre \
        -p 8080:8080 tomee-andre

