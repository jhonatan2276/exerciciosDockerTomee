# Selecione uma imagem de referência em hub.docker.com
FROM tomee:8-jre-7.0.3-webprofile

# Adicione arquivos e/ou referências necessárias
ARG WAR_FILE=apptest.war
ADD ${WAR_FILE} /usr/local/tomee/webapps/${WAR_FILE} 
COPY tomee.xml /usr/local/tomee/conf
COPY mysql-connector-java-5.1.42-bin.jar /usr/local/tomee/lib

