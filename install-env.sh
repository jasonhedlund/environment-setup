#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-mysql php5-curl php5-imagick mysql-client curl 

sudo curl -sS https://getcomposer.org/installer | php 

git clone https://github.com/jasonhedlund/application-setup.git

sudo php composer.phar require aws/aws-sdk-php 

sudo php /var/www/html/setup.php 

sudo chmod 600 /var/www/html/setup.php

sudo mv ./application-setup/* /var/www/html

sudo mv vendor /var/www/html 

sudo service apache2 restart 
sudo service apache2 reload
