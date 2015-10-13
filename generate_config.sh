#!/bin/sh

if [ -d /opt/php7/etc/modules ] ; then
echo Dir exist !
else
mkdir /opt/php7/etc/modules
fi;

cd /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/

for f in *.so; do

   echo 'extension='$f > /opt/php7/etc/modules/$f.ini

done

