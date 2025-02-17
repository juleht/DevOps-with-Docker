
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
test input using: helsinki.fi
```

