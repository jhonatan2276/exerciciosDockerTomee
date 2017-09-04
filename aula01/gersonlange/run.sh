docker rm -f $(docker ps -a -q)

docker run -d --name mysql-gerson \
	-h mysql-gerson \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=gerson \
	-e MYSQL_DATABASE=gerson \
	mysql-gerson

sleep 3

docker run -d --name tomee-gerson \
	-h tomee-gerson \
	--link mysql-gerson:mysql-gerson \
        -p 8080:8080 tomee-gerson
