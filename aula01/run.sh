docker rm -f mysql-docker || true
docker rm -f host1 || true
docker run -d --name mysql-docker -h mysql-docker -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=dockermysql  mysql-docker
sleep 20
docker run -d --name host1 -h host1 -p 8080:8080 --link  mysql-docker:mysql-docker tomee-war
