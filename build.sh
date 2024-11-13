#!/bin/bash
sudo chmod 777 /var/run/docker.sock
#login into DockerHub:
sudo docker login -u $DOCKER_USERNAME -p $DOCKER_PASS

#stopping existing container:
sudo docker stop react
sudo docker rm react

#building a image:
sudo docker build -t react-ci/cd .

#running a container from the created image:
sudo docker run -d -it --name react -p 81:80 react-ci/cd

#pushing the image to dockerhub:
docker tag react-ci/cd mani25599/react-app:1
docker push mani25599/react-app:1
