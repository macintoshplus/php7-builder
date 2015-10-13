#!/bin/sh

cd /sources/php-src/ext/gd

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --with-zlib-dir --with-jpeg-dir --with-png-dir --with-freetype-dir --with-php-config=/opt/php7/bin/php-config

make

make install

if [ -f /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/gd.so ] ; then

echo "extension=gd.so" > /opt/php7/etc/modules/gd.ini

fi;

