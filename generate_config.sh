#!/bin/sh

if [ -d /opt/php7/etc/modules ] ; then
echo Dir exist !
else
mkdir /opt/php7/etc/modules
fi;

for f in /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/*.so; do

   echo 'extensions='$f > /opt/php7/etc/modules/$f

done

