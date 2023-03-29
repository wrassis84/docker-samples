# Dica #4: Remova as dependências desnecessárias:
FROM debian:9
RUN  apt-get update &&  \
     apt-get install -y --no-install-recommends \
     openjdk-8-jre
COPY app/target/app.jar /app/app.jar
COPY app/samples /samples 
CMD  ["java", "-jar", "/app/app.jar"]
