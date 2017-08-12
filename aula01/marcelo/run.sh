docker rm -f aula1 || true
docker rm -f tomeeServer || true

docker run --name aula1 -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.6
sudo docker run --name tomeeServer --link aula1:aula1 -p 8080:8080 -d tomee:8-jre-1.7.4-webprofile

