#!/usr/bin/env bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install python3-pip -y
sudo pip3 install Flask
sudo pip3 install flask-cors
sudo pip3 install redis
sudo pip3 install flask-sock
sudo apt-get install curl -y
sudo apt-get install wget -y
curl -sL https://deb.nodesource.com/setup_19.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y vim
sudo apt-get install -y nginx
sudo apt-get install -y lsb-release
sudo apt-get install -y net-tools
sudo pip3 install gunicorn
