# Base Image to start building the stack
FROM phpdockerio/php72-fpm as base
WORKDIR /tmp

# Install PHP Dependencies and Memcached too
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
git zlib1g-dev libxml2-dev libzip-dev zip \
php7.2-intl php7.2-mysqli php7.2-pdo php7.2-pdo-mysql php7.2-gd \
memcached libmemcached-tools php7.2-memcached