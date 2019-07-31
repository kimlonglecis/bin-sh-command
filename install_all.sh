#! /bin/bash

# Install Composer
install_composer.sh


# Install vscode_dbeaver
install_vscode_dbeaver.sh

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

# Install docker
install_docker.sh

# Install PHP Versions
install_php_version.sh