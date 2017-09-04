docker rm -f $(docker ps -a -q)

docker run -d --name mysql-julia \
	-h mysql-julia \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=root \
	-e MYSQL_DATABASE=root \
	mysql-julia

sleep 3

docker run -d --name tomee-julia \
	-h tomee-julia \
	--link mysql-julia:mysql-julia \
-p 8080:8080 tomee-julia
