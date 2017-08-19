docker rmi -f tomee-soujava
docker rmi -f mysql-soujava



docker build -t tomee-soujava .

cd mysql
docker build -t mysql-soujava .
