#!/bin/bash

sudo apt-get update -y
sudo apt-get install apache2 -y
sudo apt-get install unzip -y
sudo wget https://www.tooplate.com/zip-templates/2134_gotto_job.zip
sudo unzip 2134_gotto_job.zip
sudo cp -R /home/ubuntu/2134_gotto_job/* /var/www/html/
