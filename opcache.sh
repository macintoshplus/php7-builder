#!/bin/sh

echo Build $0

cd /sources/php-src/ext/opcache

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --with-php-config=/opt/php7/bin/php-config

make

make install

if [ -f /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/opcache.so ] ; then

echo "zend_extension=opcache.so" > /opt/php7/etc/module/opcache.ini

fi;