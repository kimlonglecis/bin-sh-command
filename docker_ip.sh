#!/bin/bash

echo ""
echo ""
echo "LIST OF CONTAINERS IP ADRESS"
docker inspect --format '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)