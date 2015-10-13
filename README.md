# PHP 7 builder

## Build PHP dev master or PHP 7.x.x dev version

1) clone this repos
2) make /sources folder
3) enter clone folder
4) run `chmod +x *.sh`
5) `php7.sh` or `master.sh` for checkout source code
6) run `build.sh`

## Build specific version of php7 ?

Checkout the version into `/sources/php-src` and run `build.sh`

## Install target

This script build php and install into `/opt/php7` folder.

The last step archive your build into tar.gz file.

## Use docker image

```
docker pull macintoshplus/php7-builder
docker run -v /path/to/php7/sources:/sources -v /path/to/php7/opt:/opt macintoshplus/php7-builder:latest /bin/bash
```
See first  paragraphe.
