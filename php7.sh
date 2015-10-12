#!/bin/sh

cd /sources

if [ -d php-src ]; then
git pull php-src
git checkout php-7.0
else
git clone https://github.com/php/php-src php-src
fi
