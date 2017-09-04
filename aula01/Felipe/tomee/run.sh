docker rm -f $(docker ps -a -q)

docker run -d --name mysql-felipe \
	-h mysql-felipe \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=felipe \
	-e MYSQL_DATABASE=felipe \
	mysql-felipe

sleep 3

docker run -d --name tomee-felipe \
	-h tomee-felipe \
	--link mysql-felipe:mysql-felipe \
        -p 8080:8080 tomee-felipe
