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
echo "LIST OF NETWORKS"
docker network ls
