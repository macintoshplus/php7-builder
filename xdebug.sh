#!/bin/sh

echo Build $0

git clone https://github.com/xdebug/xdebug.git /sources/php-src/ext/xdebug

cd /sources/php-src/ext/xdebug

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --path-php-config=/opt/php7/bin/php-config

make -j 5 all

make install
