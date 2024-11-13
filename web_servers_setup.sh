#!/usr/bin/env bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install python3-pip -y

sudo pip3 install Flask
sudo pip3 install flask-cors
sudo pip3 install flask-sock

sudo pip3 install gunicorn
sudo pip3 install 'pymongo[srv]'

sudo apt-get install -y nginx
sudo apt-get install -y lsb-release
sudo apt-get install -y net-tools


sudo apt-get install curl gnupg -y
sudo apt-get install wget -y

# install mongodb
curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
   --dearmor

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/8.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list

sudo apt-get update

sudo apt-get install -y mongodb-org
sudo systemctl daemon-reload
sudo systemctl start mongod

# install redis
sudo apt-get install lsb-release curl gpg
curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
sudo chmod 644 /usr/share/keyrings/redis-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list
sudo apt-get update
sudo apt-get install redis

sudo systemctl enable redis-server
sudo systemctl start redis-server

# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

# download and install Node.js (you may need to restart the terminal)
nvm install 22

# install ts
sudo npm install -g typescript

# install certbot
sudo apt-get install certbot
sudo apt-get install python3-certbot-nginx

