docker rmi -f tomee-aula02
docker rmi -f mysql-aula02

docker build -t tomee-aula02 .

cd mysql-container
docker build -t mysql-aula02 .
