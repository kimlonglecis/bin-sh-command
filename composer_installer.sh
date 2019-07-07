#! /bin/bash

sudo apt install curl php-cli php-mbstring git unzip -y

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer ##Composer ready


