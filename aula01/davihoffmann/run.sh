docker rm -f $(docker ps -a -q)

docker run -d --name mysql-unidavi \
	-h mysql-unidavi \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=unidavi \
	-e MYSQL_DATABASE=unidavi \
	mysql-unidavi

docker run -d --name tomee-unidavi \
	-h tomee-unidavi \
	--link mysql-unidavi:mysql-unidavi \
	-p 8080:8080 tomee-unidavi
