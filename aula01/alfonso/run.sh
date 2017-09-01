docker rm -f $(docker ps -a -q)

docker run -d --name mysql01 -h mysql01 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=unidavi -e MYSQL_DATABASE=unidavi mysql8

sleep 10s

docker run -d --name host1 -h host1 --link mysql01:mysql01 -p 8080:8080 tomee-unidavi
