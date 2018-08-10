#!/bin/bash

echo ""
echo ""
echo "GIT ADD ."
git add .

echo ""
echo ""
echo "GIT COMMIT"
read -p "ENTER COMMIT COMMENT (Default: Minor Changes): " comment
comment=${comment:-Minor Changes}
git commit -m "$comment"

echo ""
echo ""
echo "GIT PUSH"
read -p "ENTER BRANCH NAME (Default: master): " name
name=${name:-master}
git push origin $name
