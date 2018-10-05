#!/bin/bash
echo ""
echo ""
echo "GIT STATUS ."
git status

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

echo ""
echo ""
echo "GIT MERGE TO MASTER"
git fetch . $name:master

echo ""
echo ""
echo "GIT PUSH ORIGIN MASTER"
git_add_push_master