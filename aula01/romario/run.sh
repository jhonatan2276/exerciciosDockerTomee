docker rm -f $(docker ps -a -q)

docker run -d --name mysql-romario \
	-h mysql-romario \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=romario \
	-e MYSQL_DATABASE=romario \
	mysql-romario

sleep 3

docker run -d --name tomee-romario \
	-h tomee-romario \
	--link mysql-romario:mysql-romario \
        -p 8080:8080 tomee-romario
