#!/bin/bash

sed -i "s/bind-address            = 127.0.0.1/bind_address = 0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start;

sleep 5;
mariadb -e "CREATE DATABASE IF NOT EXISTS $db_name;"
mariadb -e "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd';"
mariadb -e "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%';"
mariadb -e "FLUSH PRIVILEGES;"

service mariadb stop;

exec mysqld_safe