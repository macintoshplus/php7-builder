#!/bin/sh

echo Build $0

git clone https://github.com/alanxz/rabbitmq-c.git /sources/rabbitmq-c

cd /sources/rabbitmq-c

autoreconf -i
./configure --prefix=/opt/php7

make install


#git clone https://github.com/pdezwart/php-amqp.git /sources/php-src/ext/amqp
git clone https://github.com/hanikesn/php-amqp.git /sources/php-src/ext/amqp

cd /sources/php-src/ext/amqp
git checkout phpng

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --with-php-config=/opt/php7/bin/php-config --with-librabbitmq-dir=/opt/php7/ --with-amqp

make

make install

if [ -f /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/amqp.so ] ; then

echo "extension=amqp.so" > /opt/php7/etc/modules/amqp.ini

fi;