docker rm -f $(docker ps -a -q)

docker run -d --name mysql-jeanperfoll -h mysql-jeanperfoll -p 3306:3306 -e MYSQL_ROOT_PASSWORD=jeanperfoll -e MYSQL_DATABASE=jeanperfoll mysql

docker run -d --name tomee-jeanperfoll -h tomee-jeanperfoll --link mysql-jeanperfoll:mysql-jeanperfoll -p 8080:8080 tomee
