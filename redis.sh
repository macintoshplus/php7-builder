#!/bin/sh

echo Build $0

git clone https://github.com/phpredis/phpredis.git /sources/php-src/ext/redis

cd /sources/php-src/ext/redis
git checkout php7

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --with-php-config=/opt/php7/bin/php-config

make

make install

if [ -f /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/redis.so ] ; then

echo "extension=redis.so" > /opt/php7/etc/modules/redis.ini

fi;