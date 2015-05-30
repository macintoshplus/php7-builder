FROM debian:jessie

RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get install -y make git autoconf automake libtool re2c bison g++ gcc libxml2 libxml2-dev libicu52 libicu-dev libjpeg62 libjpeg-dev libpng12-0 libpng12-dev zlib1g zlib1g-dev libzip2 libzip-dev

RUN apt-get install -y libfreetype6 libfreetype6-dev libvpx1 libvpx-dev libxpm4 libxpm-dev

COPY build.sh /build.sh

RUN chmod 777 /build.sh
