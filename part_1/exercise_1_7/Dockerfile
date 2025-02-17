# load ubuntu
FROM ubuntu:22.04

# working director
WORKDIR /usr/src/app

# install curl
RUN apt-get update && apt-get -y install curl

# copy script to working directory
COPY script.sh .

# give persmissions to run for the file
RUN chmod +x script.sh

# run the script
CMD ./script.sh
