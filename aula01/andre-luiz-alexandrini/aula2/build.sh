docker rmi -f tomee-andre
docker rmi -f mysql-andre

cp ../apptest/target/apptest-1.0.war apptest.war

docker build -t tomee-andre .

cd mysql
docker build -t mysql-andre .
