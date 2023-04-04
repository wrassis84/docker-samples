FROM       golang AS builder
ADD        . /src
WORKDIR    /src
RUN        go mod init goapp && go build -o goapp

FROM       alpine:3.1
WORKDIR    /app
COPY       --from=builder /src/goapp /app
ENTRYPOINT ./goapp
