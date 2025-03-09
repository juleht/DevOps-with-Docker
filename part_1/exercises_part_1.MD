
#### Exercise 1.1: Getting started

```
docker run -d --name first nginx
docker run -d --name second nginx
docker run -d --name third nginx
docker container stop first second
docker ps -a
```

#### Exercise 1.2: Cleanup

```
docker rm --force first second third
docker rmi --force nginx
docker ps -a
docker image ls -a
```

#### Exercise 1.3: Secret message

```
docker run -d -it --name tehtava-1-3 devopsdockeruh/simple-web-service:ubuntu
docker exec tehtava-1-3 tail -f ./text.log
```

#### Exercise 1.4: Missing dependencies

```
docker run -it ubuntu
apt-get update && apt-get -y install curl
sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
input: helsinki.fi
```

#### Exercise 1.5: Sizes of images

```
docker pull devopsdockeruh/simple-web-service:ubuntu
docker pull devopsdockeruh/simple-web-service:alpine
docker image ls -a
docker run -it -d --name alpinekontti devopsdockeruh/simple-web-service:alpine
docker exec alpinekontti tail -f ./text.log
```

#### Exercise 1.6: Hello Docker Hub

```
docker run -it devopsdockeruh/pull_exercise
input: basics
```

#### Exercise 1.7: Image for script

[Dockerfile](https://github.com/juleht/DevOps-with-Docker/blob/main/part_1/exercise_1_7/Dockerfile)

```
docker build . -t curler
docker run -it curler
input: helsinki.fi
```

#### Exercise 1.8: Two line Dockerfile

[Dockerfile](https://github.com/juleht/DevOps-with-Docker/blob/main/part_1/exercise_1_8/Dockerfile)

```
docker build . -t web-server
docker run -it web-server
```

#### Exercise 1.9: Volumes

```
touch text.log
docker run -it -v "$(pwd)/text.log:/usr/src/app/text.log" --name tehtava9 devopsdockeruh/simple-web-service
```

#### Exercise 1.10: Ports open

```
docker build . -t web-server
docker run -p 127.0.0.1:8080:8080 web-server
```

#### Exercise 1.11: Spring

For this exercise you have to clone courses example project [material-applications](https://github.com/docker-hy/material-applications/tree/main)

[Dockerfile](https://github.com/juleht/DevOps-with-Docker/blob/main/part_1/exercise_1_11/Dockerfile)

```
docker build . -t spring-project
docker run -p 127.0.0.1:8080:8080 spring-project
```

#### Mandatory Exercise 1.12: Hello, frontend!

For this exercise you have to clone courses example project [material-applications](https:>

[Dockerfile](https://github.com/juleht/DevOps-with-Docker/blob/main/part_1/exercise_1_12/Dockerfile)
 
```
docker build -t example-frontend .
docker run -p 5000:5000 example-frontend
```

#### Mandatory Exercise 1.13: Hello, backend!

For this exercise you have to clone courses example project [material-applications](https:>
Download go version from here [go](https://go.dev/doc/install)
[Dockerfile](https://github.com/juleht/DevOps-with-Docker/blob/main/part_1/exercise_1_13/Dockerfile)

```
docker build -t example-backend .
docker run -p 8080:8080 example-backend
```

#### Mandatory Exercise 1.14: Environment

[Dockerfile for frontend](https://github.com/juleht/DevOps-with-Docker/blob/main/part_1/exercise_1_12/Dockerfile)

[Dockerfile for backend](https://github.com/juleht/DevOps-with-Docker/blob/main/part_1/exercise_1_13/Dockerfile)

```
docker build -f Dockerfile-frontend -t example-frontend .
docker run -p 5000:5000 example-frontend:latest 
docker build -f Dockerfile-backend -t example-backend .
docker run -p 8080:8080 example-backend:latest
```

#### Exercise 1.16: Cloud deployment

[Dockerfile]

This exercise i deployd the coursepage from here [Docker repo](https://hub.docker.com/r/devopsdockeruh/coursepage) to [render.com](https://render.com/).

Deployment to be successful i only had to pinpoint my github repo and the Dockerfile used.


