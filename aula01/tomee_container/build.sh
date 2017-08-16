docker rmi -f tomee_v8 || true

docker build -t tomee_v8  --build-arg WAR_FILE=ocsp17.war .
