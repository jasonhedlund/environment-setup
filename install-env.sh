#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-mysql php5-curl mysql-client curl

sudo curl -sS https://getcomposer.org/installer | php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

git clone https://github.com/jasonhedlund/application-setup.git

sudo mv ./application-setup/* /var/www/html

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

sudo php composer.phar require aws/aws-sdk-php

sudo php /var/www/html/setup.php &> /tmp/database-setup.txt

echo "Webserver environment has been installed!" > /tmp/hello.txt
