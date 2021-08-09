#!/bin/bash

# create a webserver

wget https://nginx.org/download/nginx-1.19.0.tar.gz
tar -xzgf -f nginx-1.19.0.tar.gz
rm nginx-1.19.0.tar.gz

sudo apt-get install libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev
sudo apt-get install gcc

cd nginx-1.19.0

./configure --sbin-path=/usr/bin/nginx --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --with-pcre --pid-path=/var/run/nginx.pid --with-http_ssl_module

sudo apt intall make

sudo make install

sudo nginx
