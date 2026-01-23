FROM php:8.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

# Apache on 8080 with rewrite enabled for clean URLs
RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf \
 && a2enmod rewrite

# Composer for autoload refresh
RUN apt-get update \
 && apt-get install -y git zip unzip \
 && rm -rf /var/lib/apt/lists/* \
 && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# App code
COPY . /var/www/html/

# Apache vhost pointing to backend public directory
COPY config/000-default.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /var/www/html

# Regenerate optimized autoloads to honor PSR-4 casing
RUN composer dump-autoload -o

WORKDIR /var/www/html/backend-api

RUN chown -R www-data:www-data /var/www/html

EXPOSE 8080


