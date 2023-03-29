# Dica #5: Remover o cache do gerenciador de pacotes:
FROM debian:9
RUN  apt-get update && \
     apt-get install -y --no-install-recommends \
     openjdk-8-jre  && \
     rm -rf /var/lib/apt/lists \
     rm -rf /var/cache/apt
COPY app/target/app.jar /app/app.jar
COPY app/samples /samples 
CMD  ["java", "-jar", "/app/app.jar"]
