docker rmi -f tomee-fernando || true
docker rmi -f mysql-fernando || true

docker build -t tomee-fernando .

cd mysql
docker build -t mysql-fernando .
