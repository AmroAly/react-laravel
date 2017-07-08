#!/bin/bash

# installing front end dependencies

sudo apt-get update
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

yes | sudo apt-get install -y build-essential nodejs
sudo apt-get update

cd /var/www/myproject/frontend
npm install

sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
sudo /sbin/mkswap /var/swap.1
sudo /sbin/swapon /var/swap.1

chmod -R 777 node_modules


cd /var/www/myproject/frontend

npm start
