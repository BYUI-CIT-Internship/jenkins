# Jenkins alongside Docker

This setup of of docker alongside Jenkins is meant to allow a jenkins that runs inside a container to be able to run docker commands without having to set up anything on the host. These files container a Dockerfile to build a image that allow jenkins to run docker commands, a docker-compose for easy setup and testing, and kubernetes yamls for easy deployment.

# How to Use

## Build Image
You can build an image with a tag by using `docker build PATH -t TAGNAME`. If you are planning on pushing this image to a repository make sure to tag it appropriately.

## Run docker-compose.yaml

Make sure that you have docker-compose installed on your system and that docker is running. Use the command `docker-compose up -d` in the same directory as the compose file and use `docker-compose down` to bring down the containers.

## Running on Kuberenetes

Have kubectl installed and also make sure that you have a cluster to deploy to. Change directories into `kuberenetes` and run `kubectl create -f dind-deployment.yaml,dind-service.yaml,jenkins-deployment.yaml,jenkins-service.yaml`to start the pods from the files.
