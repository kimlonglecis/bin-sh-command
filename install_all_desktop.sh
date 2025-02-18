#! /bin/bash

# Install Composer
install_composer.sh

# Install Vue Cli
#install_vuecli.sh

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



# Scrapy
install_scrapy.sh

# install utilities
install_tilix.sh
install_caffeine.sh
sudo apt-get install -y flameshot colordiff
install_libreoffice.sh




# Always Install Last
# Install docker
install_docker.sh

sudo update-alternatives --config x-terminal-emulator
