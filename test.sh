#!/bin/bash

echo ""
echo ""
echo "LIST OF CONTAINER"
git add .

echo ""
echo ""
echo "LIST OF VOLUME"
echo "Please enter commit comment:"
read comment
git commit -m "$comment"

echo ""
echo ""
echo "LIST OF NETWORK"
git push origin master
