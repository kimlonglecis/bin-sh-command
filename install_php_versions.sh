#! /bin/bash

sudo apt install python-software-properties -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt install php5.6 -y
sudo apt install php7.2 -y

# Disable Apache
sudo systemctl stop apache2.service
sudo update-rc.d apache2 disable

