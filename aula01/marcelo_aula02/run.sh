docker rm -f $(docker ps -a -q)

docker run -d --name mysql-aula02 -h mysql-aula02 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=unidavi -e MYSQL_DATABASE=aula02 mysql-aula02

sleep 3

docker run -d --name tomee-aula02 -h tomee-aula02 --link mysql-aula02:mysql-aula02 -p 8080:8080 tomee-aula02
