#!/bin/bash

echo "###### UPDATE ALL DOCKER IMAGES #####"
docker images |grep -v REPOSITORY|awk '{print $1}'|xargs -L1 docker pull 

echo "##### REMOVE DOCKER IMAGES WITH TAG <NONE> #####"
docker rmi $(docker images -f dangling=true)


