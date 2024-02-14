FROM php:8.3.1-fpm-alpine3.18
RUN apk --no-cache add --virtual .build-deps automake $PHPIZE_DEPS
RUN apk --no-cache add --virtual .run-deps vips libffi libffi-dev
RUN docker-php-ext-configure ffi --with-ffi
RUN docker-php-ext-install ffi
RUN pecl install xdebug-3.3.1 && docker-php-ext-enable xdebug
ENV XDEBUG_MODE=debug
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.7.1

