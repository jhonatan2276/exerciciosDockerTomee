docker rmi -f tomee-romario
docker rmi -f mysql-romario

# cp ../apptest/target/apptest-1.0.war apptest.war

docker build -t tomee-romario .

cd mysql
docker build -t mysql-romario .
