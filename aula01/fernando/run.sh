docker rm -f host1 || true

docker run -d --name host1 -h host1 -p 8080:8080 tomee-war

docker rm -f $(docker ps -a -q)

docker run -d --name mysql-fernando \
	-h mysql-fernando \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=soujava \
	-e MYSQL_DATABASE=soujava \
	mysql-fernando

docker run -d --name tomee-fernando \
	-h tomee-fernando \
	--link mysql-fernando:mysql-fernando \
-p 8080:8080 tomee-fernando
