#!/usr/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y curl
sudo apt-get install -y wget
sudo apt-get install python3-pip
curl -sL https://deb.nodesource.com/setup_19.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y nginx
sudo pip3 install Flask
sudo pip3 install flask-cors
sudo pip3 install pymongo
sudo apt-get install -y gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl daemon-reload
sudo systemctl start mongod
sudo systemctl enable mongod
sudo pip3 install 'pymongo[srv]'
sudo apt-get install -y lsb-release
sudo apt-get install -y net-tools
sudo pip3 install gunicorn
sudo npm -g install create-react-app
npm i react-uuid
sudo npm install -g react-router-dom localforage match-sorter sort-by
sudo npm install -g serve
