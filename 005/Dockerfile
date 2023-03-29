# Dica #3: Identifique as instruções que podem ser agrupadas:
FROM debian:9
RUN  apt-get update &&  \
     apt-get install -y \
     openjdk-8-jdk wget \
     ssh vim
COPY app/target/app.jar /app/app.jar
COPY app/samples /samples 
CMD  ["java", "-jar", "/app/app.jar"]
