#! /bin/bash

# Install Nodejs
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt install nodejs -y

# Install Gulp
sudo npm install -g npm gulp npm-check

# Install Ruby
sudo apt install ruby-full ruby-dev -y

# Install Compass
sudo apt install build-essential -y
sudo gem install compass

# Fix Gulp watch error out of memory
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# Change permission of folder ~/.npm
sudo_chown ~/.npm ~/.config
