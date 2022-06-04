#!/bin/bash

# create a webserver

wget https://nginx.org/download/nginx-1.19.0.tar.gz
tar -xzgf -f nginx-1.19.0.tar.gz
rm nginx-1.19.0.tar.gz

sudo yum install -y libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev gcc make

cd nginx-1.19.0

./configure --sbin-path=/usr/bin/nginx --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --with-pcre --pid-path=/var/run/nginx.pid --with-http_ssl_module

sudo make install

sudo nginx
