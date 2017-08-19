docker rmi -f tomee-unidavi || true

docker build -t tomee-unidavi --build-arg WAR_FILE=apptest.war .
