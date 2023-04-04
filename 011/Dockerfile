FROM       golang
WORKDIR    /app
ADD        . /app
RUN        go mod init goapp && go build -o goapp
ENTRYPOINT ./goapp
