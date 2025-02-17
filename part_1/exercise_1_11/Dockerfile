## load java
FROM amazoncorretto:8

## working directory
WORKDIR /usr/src/app

## copy project to working directory
COPY material-applications/spring-example-project .

##give rights for execution
RUN chmod +x mvnw

## build project
RUN ./mvnw package

## run
CMD java -jar ./target/docker-example-1.1.3.jar
