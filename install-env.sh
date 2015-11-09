#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl

sudo curl -sS https://getcomposer.org/installer | php
sudo php composer.phar require aws/aws-sdk-php

git clone https://github.com/jasonhedlund/application-setup.git

mv ./application-setup/* /var/www/html
mv vendor /var/www/html

php -f /var/www/html/setup.php

sudo chmod 600 /var/www/html/setup.php

echo "Hello!" > /tmp/hello.txt
