#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2

echo "Hello!" > /tmp/hello.tex#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git

git clone https://github.com/jasonhedlund/application-setup.git

mv ./application-setup/* /var/www/html

echo "Hello!" > /tmp/hello.txt
