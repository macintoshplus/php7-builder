
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

/opt/php7/bin/php -i > /opt/$phpversion-$branch-$arch-$system$version-$now-infophp
/opt/php7/bin/php -m > /opt/$phpversion-$branch-$arch-$system$version-$now-modules_php
tar czvf /opt/$phpversion-$branch-$arch-$system$version-$now.tar.gz /opt/php7
