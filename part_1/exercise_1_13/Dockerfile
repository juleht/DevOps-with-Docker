#################################
# this is dockerfie for backend #
#################################

## load node.js earlier version for this project 
FROM ubuntu:22.04

## working directory
WORKDIR /usr/src/app

## expose port 8080
EXPOSE 8080

## copy project to working directory
COPY material-applications/example-backend .

## add go tar
COPY go1.16.linux-amd64.tar.gz /usr/src/

## install go and set environmental variable
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ca-certificates
RUN apt-get install gcc -y
RUN update-ca-certificates
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf /usr/src/go1.16.linux-amd64.tar.gz
ENV PATH="$PATH:/usr/local/go/bin"
RUN go version

## build project
RUN go build

## run tests
RUN go test ./...

## run project
CMD ["./server"]

