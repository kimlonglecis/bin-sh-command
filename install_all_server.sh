#! /bin/bash

# Install Composer
install_composer_v1.sh

# Install node_npm_gulp
# install_node_npm_gulp.sh


# Install docker Compose
install_docker_compose.sh

# Increasing vm.max_map_couint = 262144 to keep Elasticsearch Node on
sudo sysctl -w fs.inotify.max_user_watches=524288
sudo sysctl -w vm.max_map_count=262144


















# Always install last
# Install Docker
install_docker_compose.sh

install_docker.sh


# Install Utilities
sudo apt install -y colordiff
