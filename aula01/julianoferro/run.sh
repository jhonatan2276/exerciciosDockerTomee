 sudo docker run --name mysql -e MYSQL_ROOT_PASSWORD=123 -d mysql:5.6
 sudo docker run --name tomee --link mysql:mysql -p 9000:80 -d tomee:8-jre-1.7.4-webprofile
