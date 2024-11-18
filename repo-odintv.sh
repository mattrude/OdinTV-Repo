#!/bin/bash

cd /var/www/html/repo/
sudo rm -rf *.zip

curl -s https://api.github.com/repos/HungerHa/libreelec_package_argonforty-device/releases/latest |grep "browser_download_url.*zip" |cut -d : -f 2,3 |tr -d \" |sudo wget -qi -

sudo /var/www/html/repo/create_repository.py *.zip

sudo rm -rf *.zip
