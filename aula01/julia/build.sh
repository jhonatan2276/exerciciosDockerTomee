
docker rmi -f tomee-julia
docker rmi -f mysql-julia

cp ../apptest/target/apptest-1.0.war apptest.war

docker build -t tomee-julia .

cd mysql
docker build -t mysql-julia .
