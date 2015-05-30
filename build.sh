cd /sources

git clone https://github.com/php/php-src php-src

cd /sources/php-src

./buildconf

./configure --prefix=/opt/php7 --enable-fpm --with-libxml-dir=/usr/lib/x86_64-linux-gnu/ --enable-bcmath --enable-exif --enable-intl --enable-pcntl

make

make install

cd /sources/php-src/ext/gd

/opt/php7/bin/phpize

./configure --with-zlib-dir --with-jpeg-dir --with-png-dir --with-freetype-dir --prefix=/opt/php7 --with-php-config=/opt/php7/bin/php-config

make

make install

