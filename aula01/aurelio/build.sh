docker rmi -f tomee-aurelio
docker rmi -f mysql-aurelio

# cp ../apptest/target/apptest-1.0.war apptest.war

docker build -t tomee-aurelio .

cd mysql
docker build -t mysql-aurelio .
