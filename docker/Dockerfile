FROM php:8.0-fpm

WORKDIR /app

RUN apt-get update && \
    apt-get install zlib1g-dev libzip-dev -y && \
    apt-get install libpq-dev -y

RUN docker-php-ext-install zip && \
    docker-php-ext-install pdo_pgsql && \
    pecl install redis && \
    docker-php-ext-enable redis

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php --install-dir=/usr/local/bin && \
    php -r "unlink('composer-setup.php');"

COPY ./ /app

RUN composer.phar install --no-dev
