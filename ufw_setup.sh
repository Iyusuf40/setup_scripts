#!/bin/bash
sudo ufw allow 443
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 3306
sudo ufw allow from 100.27.2.160 to any port 1:65000 proto udp
sudo ufw allow from 100.27.2.160 to any port 1:65000 proto tcp
