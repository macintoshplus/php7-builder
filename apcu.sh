#!/bin/sh

echo Build $0

git clone https://github.com/krakjoe/apcu.git /sources/php-src/ext/apcu

cd /sources/php-src/ext/apcu
git checkout seven

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --with-php-config=/opt/php7/bin/php-config

make

make install
