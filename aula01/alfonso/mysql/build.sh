docker rmi -f mysql8 || true

docker build -t mysql8 .
