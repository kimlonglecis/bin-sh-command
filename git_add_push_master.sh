#!/bin/bash

echo ""
echo ""
echo "GIT ADD ."
git add .

echo ""
echo ""
echo "GIT COMMIT"
echo "Enter Commit Comment"
read comment
git commit -m "$comment"

echo ""
echo ""
echo "GIT PUSH"
git push origin master
