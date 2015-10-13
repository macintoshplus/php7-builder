#!/bin/sh

cd /sources/php-src/ext/pdo_pgsql

/opt/php7/bin/phpize

./configure --prefix=/opt/php7/ --with-php-config=/opt/php7/bin/php-config

make

make install

if [ -f /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/pdo_pgsql.so ] ; then

echo "extension=pdo_pgsql.so" > /opt/php7/etc/module/pdo_pgsql.ini

fi;