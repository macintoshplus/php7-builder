#!/bin/sh

cd /sources

if [ -d php-src ]; then
git pull php-src
else
git clone https://github.com/php/php-src.git php-src
fi

cd php-src
git checkout PHP-7.0
