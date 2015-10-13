#!/bin/sh

rm -rf /opt/php7


cd /sources/php-src

cd pear
wget http://pear.php.net/go-pear.phar
cd ..

make clean

./buildconf

./configure --prefix=/opt/php7 --enable-fpm --with-libxml-dir=/usr/lib/x86_64-linux-gnu/ --enable-bcmath --enable-exif --enable-intl --enable-calendar --enable-zip --enable-soap --enable-ftp --enable-pcntl --enable-mbstring --with-openssl --with-curl --with-mysql=mysqlnd --with-mysqli=mysqlnd --with-pdo-mysql=mysqlnd --with-mcrypt --with-zlib --with-bz2 --with-config-file-path=/opt/php7/etc/ --with-config-file-scan-dir=/opt/php7/etc/modules/

make

make install

cp php.ini-* /opt/php7/etc/

cd ext/gd

/opt/php7/bin/phpize

./configure --prefix=/opt/php7 --with-zlib-dir --with-jpeg-dir --with-png-dir --with-freetype-dir --with-php-config=/opt/php7/bin/php-config

make

make install

cd ../pdo_pgsql

/opt/php7/bin/phpize

./configure --prefix=/opt/php7/ --with-php-config=/opt/php7/bin/php-config

make

make install

cd ../imap

/opt/php7/bin/phpize

./configure --with-imap --with-imap-ssl --with-kerberos --prefix=/opt/php7/ --with-php-config=/opt/php7/bin/php-config

make

make install

branch=$(git branch  | awk '{ print $2 }')
phpversion=$(bin/php -v | awk 'NR==1' | awk '{ print $2 }')

cd ../../

echo 'End of build :' >> timeofbuild
date >> timeofbuild

cp timeofbuild /opt/php7/time_of_build

now=$(date +"%Y-%m-%d")

version=$(cat /etc/debian_version)

arch=$(uname -m)
system=$(uname -s)

tar czvf /opt/php$phpversion-$branch-$arch-$system$version-$now.tar.gz /opt/php7
