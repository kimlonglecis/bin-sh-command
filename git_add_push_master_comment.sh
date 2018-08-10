#!/bin/bash

echo ""
echo ""
echo "GIT ADD ."
git add .

echo ""
echo ""
echo "GIT COMMIT"
read -p "ENTER COMMIT COMMENT: " comment
comment=${comment:-Minor Changes}
git commit -m "$comment"

echo ""
echo ""
echo "GIT PUSH"
echo "ENTER BRANCH NAME:"
read name
git push origin $name
