#!/bin/sh


mkdir /opt/php7/etc/modules

for f in /opt/php7/lib/php/extensions/no-debug-non-zts-20151012/*.so

   echo 'extensions='$f > /opt/php7/etc/modules/$f

done

