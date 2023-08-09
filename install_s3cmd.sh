#! /bin/bash



sudo apt-get install python-setuptools

wget -q -O- "https://github.com/s3tools/s3cmd/releases/download/v2.3.0/s3cmd-2.3.0.tar.gz" | tar -xz -C ~

#sudo python3 ~/s3cmd-2.3.0/setup.py install

#sudo rm -rf ~/s3cmd-*/

#s3cmd --version
