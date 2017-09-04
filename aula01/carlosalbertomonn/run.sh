docker rm -f $(docker ps -a -q)

docker run -d --name mysql-carlos \
	-h mysql-carlos \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=carlos \
	-e MYSQL_DATABASE=carlos \
	mysql-carlos

sleep 3

docker run -d --name tomee-carlos \
	-h tomee-carlos \
	--link mysql-carlos:mysql-carlos \
        -p 8080:8080 tomee-carlos
