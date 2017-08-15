# Selecione uma imagem de referência em hub.docker.com
FROM tomee:8-jre-7.0.3-webprofile

# Adicione arquivos e/ou referências necessárias
ARG WAR_FILE=warfile.war
ADD ${WAR_FILE} /usr/local/tomee/webapps/${WAR_FILE} 

