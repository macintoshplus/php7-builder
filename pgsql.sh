#!/bin/sh

rm -rf /opt/php7

cd /sources/php-src/ext/pdo_pgsql

/opt/php7/bin/phpize

./configure --prefix=/opt/php7/ --with-php-config=/opt/php7/bin/php-config

make

make install
