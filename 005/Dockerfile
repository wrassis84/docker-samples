# DICA 2: COPY mais específico para limitar a quebra de cache
FROM debian:9
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk wget ssh vim
COPY app/target/app.jar /app/app.jar
COPY app/samples /samples 
ENTRYPOINT ["java", "-jar", "/app/target/app.jar"]
