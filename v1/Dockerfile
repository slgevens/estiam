FROM debian:stretch

ENV MYSQL_USER=root \
    MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_RUN_DIR=/run/mysqld \
    MYSQL_LOG_DIR=/var/log/mysql \
    MYSQL_ROOT_PASSWORD=root
    
RUN apt-get update && apt-get install -y \
    apache2 \
    mariadb-server \
    php7.0 \
    php7.0-mysql \
    lynx \
    nano

RUN rm /var/www/html/index.html
RUN echo 'ServerName 127.0.0.1' >> /etc/apache2/apache2.conf

COPY code/index.php /var/www/html/index.php

VOLUME log_store:/var/log:rw
VOLUME mysql_store:/var/lib/mysql:rw

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
CMD ["/bin/bash", "/docker-entrypoint.sh"]

EXPOSE 80

