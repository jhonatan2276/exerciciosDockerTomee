docker rm -f mysqlfelipe || true
docker rm -f tomeefelipe || true

docker run --name mysqlfelipe -e MYSQL_ROOT_PASSWORD=felipe -d mysql:5.7
docker run --name tomeefelipe --link mysqlfelipe:mysqlfelipe -p 8080:8080 -d tomee:8-jre-1.7.2-webprofile
