#!/bin/bash

service apache2 start && service mysql start
mysql -uroot -proot -e "CREATE DATABASE IF NOT EXISTS estiam "
mysql -uroot -proot -e "USE estiam; CREATE TABLE IF NOT EXISTS estiamid (id VARCHAR(100));"
mysql -uroot -proot -e "CREATE USER IF NOT EXISTS 'estiam'@'localhost' IDENTIFIED by 'estiam';"
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON estiam.* to 'estiam'@localhost;"
mysql -uroot -proot -e "FLUSH PRIVILEGES;"
if [ "$(mysql -uroot -proot -e 'select id from estiam.estiamid'|wc -l)" -eq 0 ]; then mysql -uroot -proot -e "INSERT INTO estiamid(id) VALUES (0);"; fi
tail -f /var/log/mysql/error.log
