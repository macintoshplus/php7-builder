#!/bin/sh

echo Build $0

git clone https://github.com/phpredis/phpredis.git /sources/php-src/ext/redis

cd /sources/php-src/ext/redis

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --path-php-config=/opt/php7/bin/php-config

make

make install
