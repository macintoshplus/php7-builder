#!/bin/sh

rm -rf /opt/php7

scriptdir=$(dirname $0)

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

if [ -d /opt/php7/etc/modules ] ; then
echo Dir exist !
else
mkdir /opt/php7/etc/modules
fi;


$scriptdir/amqp.sh
$scriptdir/apcu.sh
$scriptdir/gd.sh
$scriptdir/imap.sh
$scriptdir/opcache.sh
$scriptdir/pgsql.sh
$scriptdir/redis.sh
$scriptdir/xdebug.sh
$scriptdir/yaml.sh

$scriptdir/archive.sh
