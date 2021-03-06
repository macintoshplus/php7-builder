#!/bin/sh

echo Build $0

git clone https://github.com/krakjoe/apcu.git /sources/php-src/ext/apcu

cd /sources/php-src/ext/apcu
git checkout seven

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --with-php-config=/opt/php7/bin/php-config

make clean

make

make install


if [ -f /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/apcu.so ] ; then

echo "extension=apcu.so" > /opt/php7/etc/modules/apcu.ini

fi;
