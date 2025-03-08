## load node.js earlier version for this project 
FROM ubuntu:22.04

## working directory
WORKDIR /usr/src/app

## copy project to working directory
COPY material-applications/example-frontend .

## expose port 
EXPOSE 5000

## install curl and node.js
RUN apt-get update
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt install -y nodejs
RUN npm install
## check install
RUN node -v && npm -v

## build project
RUN npm run build

RUN npm install -g serve

CMD serve -s -l 5000 build

