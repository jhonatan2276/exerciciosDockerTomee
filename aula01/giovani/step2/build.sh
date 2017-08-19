docker rmi -f tomee-giovani
docker rmi -f mysql-giovani

#cp ../apptest/target/apptest-1.0.war apptest.war

docker build -t tomee-giovani .

cd mysql
docker build -t mysql-giovani .
