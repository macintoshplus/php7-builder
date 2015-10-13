#!/bin/sh

cd /sources/php-src/ext/imap

/opt/php7/bin/phpize

./configure --with-imap --with-imap-ssl --with-kerberos --prefix=/opt/php7/ --with-php-config=/opt/php7/bin/php-config

make clean

make

make install

if [ -f /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/imap.so ] ; then

echo "extension=imap.so" > /opt/php7/etc/modules/imap.ini

fi;
