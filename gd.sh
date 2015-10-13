#!/bin/sh

cd /sources/php-src/ext/gd

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --with-zlib-dir --with-jpeg-dir --with-png-dir --with-freetype-dir --with-php-config=/opt/php7/bin/php-config

make

make install
