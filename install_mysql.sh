#!/bin/bash

echo "Updating repostories"
sudo apt update

echo "Installing mysql-server"
sudo apt install mysql-server -y

echo "Adding service to systemctl"
sudo systemctl enable mysql.service
sudo systemctl start mysql.service
systemctl status mysql.service