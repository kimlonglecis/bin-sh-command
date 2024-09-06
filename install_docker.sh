#! /bin/bash

# docker version 24.0.2
# sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

# sudo apt update

# apt-cache policy docker-ce -y

# sudo apt install docker-ce -y

# sudo usermod -aG docker ${USER}
# sudo usermod -aG systemd-journal ${USER}
# sudo usermod -aG www-data ${USER}



# su - ${USER}



# Docker 27.2.0  by ChatGPT
# Update the package list
sudo apt-get update

# Install prerequisite packages
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

# Add Docker’s official GPG key
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up the Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package list again to include the Docker repository
sudo apt-get update

# Install the latest version of Docker Engine, CLI, and containerd
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Verify that Docker is installed and running
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker

# Add the current user to the Docker group (optional, to avoid using sudo with Docker)
sudo usermod -aG docker $USER

# Print Docker version
docker --version

echo "Docker installation completed. Please log out and log back in for group changes to take effect."

