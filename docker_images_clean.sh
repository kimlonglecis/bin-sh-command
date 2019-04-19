#!/bin/bash

echo "##### REMOVE DOCKER IMAGES WITH TAG <NONE> #####"
docker rmi $(docker images -f dangling=true)


