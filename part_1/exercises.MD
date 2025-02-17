
#### Exercise 1.1: Getting started

Docker commands:

```
docker run -d --name first nginx
docker run -d --name second nginx
docker run -d --name third nginx
docker container stop first second
docker ps -a
```

#### Exercise 1.2: Cleanup

Docker commands:

```
docker rm --force first second third
docker rmi --force nginx
docker ps -a
docker image ls -a
```

#### Exercise 1.3: Secret message

Docker commands:

```
docker run -d -it --name tehtava-1-3 devopsdockeruh/simple-web-service:ubuntu
docker exec tehtava-1-3 tail -f ./text.log
```

#### Exercise 1.4: Missing dependencies

Docker commands:

```
docker run -it ubuntu
apt-get update && apt-get -y install curl
sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
input: helsinki.fi
```

#### Exercise 1.5: Sizes of images

Docker commands:

```
docker pull devopsdockeruh/simple-web-service:ubuntu
docker pull devopsdockeruh/simple-web-service:alpine
docker image ls -a
docker run -it -d --name alpinekontti devopsdockeruh/simple-web-service:alpine
docker exec alpinekontti tail -f ./text.log
```

#### Exercise 1.6: Hello Docker Hub

Docker commands:

```
docker run -it devopsdockeruh/pull_exercise
input: basics
```

#### Exercise 1.7: Image for script

[Dockerfile](https://github.com/juleht/DevOps-with-Docker/blob/main/part_1/exercise_1_7/Dockerfile)

Docker commands:

```
docker build . -t curler
docker run -it curler
input: helsinki.fi
```

#### Exercise 1.8: Two line Dockerfile

```
docker build . -t web-server
docker run -it web-server
```
