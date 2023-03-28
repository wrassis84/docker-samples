# "FROM" a imagem base para a contrução do container:
FROM debian
# "RUN" define o que vai ser executado durante o build da imagem.
# Deve haver somente uma instrução "RUN", pois cada uma gera uma camada "read only",
# de forma que a camada seguinte não consegue interagir com a anterior.
# Assim, se tivéssemos a linha a seguir: "RUN apt-get clean", o comando não seria realmente
# executado pois a camada anterior seria somente "read only":
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
&& apt-get install -y apache2 
#&& apt-get clean
# "ENV" injeta variáveis de ambiente no container.
# Nesse caso, temos variáveis de ambiente específicas do apache:
ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"
# "LABEL" "serve para aplicar metadados a objetos Docker":
LABEL description="Webserver"
LABEL version="1.0.0"
# "VOLUME" define o volume (data volume anônimo) que vai ser criado em "/var/lib/docker/volumes",
# quando o container for executado. Não é possível criar volumes do tipo bind:
VOLUME /var/www/html/
# "EXPOSE" determina a porta do container que vai "escutar", aguardando requisições:
EXPOSE 80
# NOTA: Quando utilizamos -p na linha de comando, estamos mapeando uma porta definida:
# docker container run -ti -p 8080:80, ou seja a porta 8080 do host para a porta 80 do container.
# Quando utilizamos -P, estamos mapeando uma porta aleatória do host para uma porta do container.
