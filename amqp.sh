#!/bin/sh

echo Build $0

git clone https://github.com/alanxz/rabbitmq-c.git /sources/rabbitmq-c

cd /sources/rabbitmq-c

./configure

make 

make install


git clone https://github.com/pdezwart/php-amqp.git /sources/php-src/ext/amqp

cd /sources/php-src/ext/amqp

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --path-php-config=/opt/php7/bin/php-config

make -j 5 all

make install
