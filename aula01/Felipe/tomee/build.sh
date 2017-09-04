docker rmi -f tomee-felipe
docker rmi -f mysql-felipe

#cp ../apptest/target/apptest-1.0.war apptest.war

docker build -t tomee-felipe .

cd mysql
docker build -t mysql-felipe .
