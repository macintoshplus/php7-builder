FROM debian:jessie

RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get install -y make git autoconf automake libtool re2c bison g++ gcc pkg-config libxml2 libxml2-dev libicu52 libicu-dev libjpeg62 libjpeg-dev libpng12-0 libpng12-dev zlib1g zlib1g-dev libzip2 libzip-dev

RUN apt-get install -y libfreetype6 libfreetype6-dev libvpx1 libvpx-dev libxpm4 libxpm-dev libssl1.0.0 libssl-dev libcurl3 libcurl3-gnutls libcurl4-openssl-dev libmcrypt4 libmcrypt-dev libc-client2007e libc-client-dev libpq5 libpq-dev libbz2-1.0 libbz2-dev 

RUN mkdir /builder

COPY *.sh /builder/

RUN chmod 777 /builder/*.sh

VOLUME /sources
VOLUME /opt

#ENTRYPOINT ["/builder/php7.sh", "/builder/build.sh"]
