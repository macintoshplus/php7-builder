#!/bin/sh

echo "Attention a l'emplacement de la librairie"

echo Build $0

#hg clone https://bitbucket.org/xi/libyaml
cd /sources
wget http://pyyaml.org/download/libyaml/yaml-0.1.5.tar.gz

tar xvzf yaml-0.1.5.tar.gz

cd yaml-0.1.5

./configure --prefix=/opt/php7

make

make install

git clone https://github.com/php/pecl-file_formats-yaml.git /sources/php-src/ext/yaml

cd /sources/php-src/ext/yaml
git checkout php7

/opt/php7/bin/phpize

./configure --with-yaml --prefix=/opt/php7 --with-php-config=/opt/php7/bin/php-config

make

make install

if [ -f /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/yaml.so ] ; then

echo "extension=yaml.so" > /opt/php7/etc/module/yaml.ini

fi;