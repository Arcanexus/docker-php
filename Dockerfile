FROM php:8.3-apache

RUN DEBIAN_FRONTEND=noninteractive && apt update \
    && apt -y upgrade \
    && apt install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libtidy-dev \
        libzip-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd mysqli pdo_mysql exif tidy zip \
    && rm -rf /var/lib/apt/lists/* \
    && a2enmod rewrite
