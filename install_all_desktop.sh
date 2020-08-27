#! /bin/bash

# Install Composer
install_composer.sh

# Install Vue Cli
install_vuecli.sh

# Install vscode_dbeaver
#install_vscode.sh

# Install node_npm_gulp
install_node_npm_gulp.sh

# Git Init
git_init

# Creating /www
sudo mkdir -p /www
sudo_chown /www
sudo_chmod_d_f /www

# Creating ~/Desktop/www
git clone git@bitbucket.org:brandcreative/www.git ~/Desktop/www

# Install s3cmd
install_s3cmd.sh

# Install docker Compose
install_docker_compose.sh

# Install PHP Versions
install_php_version.sh

# Install docker
install_docker.sh

# Scrapy
install_scrapy.sh

# install utilities
install_terminix.sh
install_caffeine.sh