docker rm -f $(docker ps -a -q)

docker run -d --name mysql-aurelio \
	-h mysql-aurelio \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=aurelio \
	-e MYSQL_DATABASE=aurelio \
	mysql-aurelio

sleep 3

docker run -d --name tomee-aurelio \
	-h tomee-aurelio \
	--link mysql-aurelio:mysql-aurelio \
        -p 8080:8080 tomee-aurelio
