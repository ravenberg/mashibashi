#!/bin/bash

echo "Updating repostories"
sudo apt update

echo "Installing mysql-server"
sudo apt install mysql-server -y

echo "Adding service to systemctl"
sudo systemctl enable mysqld.service
sudo systemctl start mysqld.service
systemctl status mysqld.service