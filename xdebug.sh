#!/bin/sh

echo Build $0

git clone https://github.com/xdebug/xdebug.git /sources/php-src/ext/xdebug

cd /sources/php-src/ext/xdebug

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --with-php-config=/opt/php7/bin/php-config --enable-xdebug

make -j 5 all

make install
if [ -f /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/xdebug.so ] ; then

echo "zend_extension=xdebug.so" > /opt/php7/etc/module/xdebug.ini

fi;