#! /bin/bash



sudo apt-get install python-setuptools

wget -q -O- "https://github.com/s3tools/s3cmd/releases/download/v2.0.2/s3cmd-2.0.2.tar.gz" | tar -xz -C ~

sudo python ~/s3cmd-2.0.2/setup.py install

sudo rm -rf ~/s3cmd-*/

s3cmd --version
