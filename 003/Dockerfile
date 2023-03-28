FROM debian

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
&& apt-get install -y apache2 
RUN chown www-data:www-data /var/lock/ \
&& chown www-data:www-data /var/run/   \
&& chown www-data:www-data /var/log/

ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"

# Com o "COPY" podemos copiar tudo que está no diretório, diretórios ou arquivos 
# para dentro da imagem.
# COPY index.html /var/www/html

# "ADD" copia arquivos e diretórios para o filesystem do container.
# Além disso, o "ADD" copia arquivos/diretórios .tar para o filesystem do container já
# desempacotados e manipula também arquivos/URLs remotos!
ADD index.html /var/www/html/

LABEL description="Webserver"
LABEL version="3.5.0"

USER root 
WORKDIR /var/www/html/
VOLUME /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D", "FOREGROUND"]
