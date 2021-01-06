#! /bin/bash

# Install Composer
install_composer_v1.sh

# Install node_npm_gulp
# install_node_npm_gulp.sh


# Install docker Compose
install_docker_compose.sh

# Increasing vm.max_map_couint = 262144 to keep Elasticsearch Node on
echo ""
echo "Added by Kim Long Le: Brandcreative LLC" >> /etc/sysctl.conf
echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
echo "vm.max_map_count=262144" >> /etc/sysctl.conf

















# Always install last
# Install Docker
install_docker_compose.sh

install_docker.sh
