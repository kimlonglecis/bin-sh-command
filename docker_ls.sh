#!/bin/bash

echo ""
echo ""
echo "LIST OF CONTAINERS"
docker ps -a 


echo ""
echo ""
echo "LIST OF VOLUMES"
docker volume ls

echo ""
echo ""
echo "LIST OF UNUSED-VOLUMES"
docker volume ls -qf dangling=true


echo ""
echo ""
echo "LIST OF CONTAINERS IP ADRESS"
docker inspect --format '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)


echo ""
echo ""
echo "LIST OF NETWORKS"
docker network ls
