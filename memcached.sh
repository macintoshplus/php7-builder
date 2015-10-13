#!/bin/sh

echo Build $0

git clone https://github.com/php-memcached-dev/php-memcached.git /sources/php-src/ext/memcached

cd /sources/php-src/ext/memcached
git checkout php7

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --with-php-config=/opt/php7/bin/php-config

make

make install

if [ -f /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/memcached.so ] ; then

echo "extension=memcached.so" > /opt/php7/etc/module/memcached.ini

fi;