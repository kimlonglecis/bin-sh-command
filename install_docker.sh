#! /bin/bash

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

sudo apt update

apt-cache policy docker-ce -y

sudo apt install docker-ce -y

sudo usermod -aG docker ${USER}
sudo usermod -aG systemd-journal ${USER}
sudo usermod -aG www-data ${USER}



su - ${USER}

