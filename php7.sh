#!/bin/sh

cd /sources

if [ -d php-src ]; then
cd php-src
git pull
cd ..
else
git clone https://github.com/php/php-src.git php-src
fi

cd php-src
git checkout PHP-7.0
