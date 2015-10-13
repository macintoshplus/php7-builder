#!/bin/sh

rm -rf /opt/php7

cd /sources/php-src/ext/imap

/opt/php7/bin/phpize

./configure --with-imap --with-imap-ssl --with-kerberos --prefix=/opt/php7/ --with-php-config=/opt/php7/bin/php-config

make

make install
