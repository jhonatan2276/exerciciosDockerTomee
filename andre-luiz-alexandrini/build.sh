docker rmi -f mysql-docker || true

docker build -t mysql-docker .
