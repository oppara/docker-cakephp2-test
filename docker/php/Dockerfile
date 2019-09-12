FROM php:5.6-cli

# https://hub.docker.com/_/php

RUN apt-get -y update \
    && apt-get -y install git zip unzip libicu-dev zlib1g-dev libmcrypt-dev \
    && docker-php-ext-install pdo_mysql mysqli mbstring intl mcrypt

COPY php.ini /usr/local/etc/php/php.ini

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php -r "if (hash_file('sha384', 'composer-setup.php') === 'a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
  && php composer-setup.php \
  && php -r "unlink('composer-setup.php');" \
  && mv composer.phar /usr/local/bin/composer \
  && composer selfupdate \
  && composer global require hirak/prestissimo

ENTRYPOINT tail -f /dev/null

