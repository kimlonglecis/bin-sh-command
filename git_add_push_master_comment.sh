#!/bin/bash

echo ""
echo ""
echo "GIT ADD ."
git add .

echo ""
echo ""
echo "GIT COMMIT"
echo "ENTER COMMIT COMMENT:"
read comment
git commit -m "$comment"

echo ""
echo ""
echo "GIT PUSH"
echo "ENTER BRANCH NAME:"
read name
git push origin $name
