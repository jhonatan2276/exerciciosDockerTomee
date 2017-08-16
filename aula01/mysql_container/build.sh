docker rmi -f mysql_v8 || true

docker build -t mysql_v8 .
