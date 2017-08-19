docker rmi -f tomee
docker rmi -f mysql

docker build -t tomee .

cd mysql
docker build -t mysql .
