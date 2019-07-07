#! /bin/bash

# Creating /www
sudo mkdir -p /www
sudo_chown /www
sudo_chmod_d_f /www

# Creating ~/Desktop/www
git clone git@bitbucket.org:brandcreative/www.git ~/Desktop/www