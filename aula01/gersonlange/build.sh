docker rmi -f tomee-gerson
docker rmi -f mysql-gerson

cp ../apptest/target/apptest-1.0.war apptest.war

docker build -t tomee-gerson .

cd mysql
docker build -t mysql-gerson .
