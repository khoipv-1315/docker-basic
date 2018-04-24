FROM php:7.1.4-apache

MAINTAINER KHOI

RUN apt-get update && apt-get install -y \
    php \
    libapache2-mod-php \
    php-mcrypt \
    php-pear \
    php-apc \

# Port
EXPOSE 3000

COPY . .

CMD ["apache2-foreground"]
