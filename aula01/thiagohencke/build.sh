docker rmi -f tomee_v8 || true
docker rmi -f mysql_v8 || true

cd tomee_container
docker build -t tomee_v8 .

cd ../mysql_container
docker build -t mysql_v8 .
