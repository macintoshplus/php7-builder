#!/bin/sh

echo Build $0

cd /sources/php-src/ext/opcache

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --with-php-config=/opt/php7/bin/php-config

make

make install
