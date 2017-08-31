docker rmi -f tomee-unidavi
docker rmi -f mysql-unidavi

docker build -t tomee-unidavi .

cd mysql
docker build -t mysql-unidavi .
