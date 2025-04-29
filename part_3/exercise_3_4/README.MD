docker build -t builder -f Dockerfile-build .

docker run -e DOCKER_USER= -e DOCKER_PWD= -v /var/run/docker.sock:/var/run/docker.sock 'image' 'github repo' 'docker hub repo'
