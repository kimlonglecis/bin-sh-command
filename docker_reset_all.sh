#!/bin/bash

docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker volume rm $(docker volume ls)

docker system prune -f

