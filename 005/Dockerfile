# DICA 1: A ordem importa para o cache
FROM debian:9
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk wget ssh vim
COPY app /app
ENTRYPOINT ["java", "-jar", "/app/target/app.jar"]
