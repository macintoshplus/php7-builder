#!/bin/sh

echo "Attention a l'emplacement de la librairie"

echo Build $0

hg clone https://bitbucket.org/xi/libyaml

./configure

make

make install

git clone https://github.com/php/pecl-file_formats-yaml.git /sources/php-src/ext/yaml

cd /sources/php-src/ext/yaml

/opt/php7/bin/phpize

./configure --with-yaml --prefix=/opt/php7 --path-php-config=/opt/php7/bin/php-config

make

make install
