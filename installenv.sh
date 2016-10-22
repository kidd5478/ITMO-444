#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2
sudo apt-get install git

sudo systemctl enable apache2
sudo systemctl start apache2

sudo git clone https://github.com/kidd5478/html.git

sudo rm -r ../../var/www/html
sudo mv ./html ../../var/www
