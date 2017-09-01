docker rm -f $(docker ps -a -q)

docker run -d --name mysql_v8 \
	-h mysql_v8 \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=root \
	-e MYSQL_DATABASE=thiago \
	mysql_v8

sleep 6

docker run -d --name tomee_v8 \
	-h tomee_v8 \
	--link mysql_v8:mysql_v8 \
        -p 8080:8080 tomee_v8
