FROM php:7.2-fpm-alpine

WORKDIR /var/www

RUN docker-php-ext-install pdo pdo_mysql

RUN apk add autoconf build-base curl-dev openssl-dev \
  && pecl install mongodb \
  && docker-php-ext-enable mongodb \
  && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php composer-setup.php \
  && php -r "unlink('composer-setup.php');" \
  && mv composer.phar /usr/local/bin/composer 