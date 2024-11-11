#!/bin/bash

#login into DockerHub:
docker logout
docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASS}

#stopping existing container:
docker stop react
docker rm react

#building a image:
docker build -t react-ci/cd .

#running a container from the created image:
docker run -d -it --name react -p 8083:80 react-ci/cd

#pushing the image to dockerhub:
docker tag react-ci/cd mani25599/react-app
docker push mani25599/react-app
