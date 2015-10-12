#!/bin/sh

echo Build $0

git clone https://github.com/php-memcached-dev/php-memcached.git /sources/php-src/ext/memcached

cd /sources/php-src/ext/memcached

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --path-php-config=/opt/php7/bin/php-config

make

make install
