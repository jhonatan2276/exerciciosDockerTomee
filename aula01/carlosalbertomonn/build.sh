docker rmi -f tomee-carlos
docker rmi -f mysql-carlos

# cp ../apptest/target/apptest-1.0.war apptest.war

docker build -t tomee-carlos .

cd mysql
docker build -t mysql-carlos .
