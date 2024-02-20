#!/bin/bash

mkdir -p /var/www/html

cd  /var/www/html

rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

chmod +x wp-cli.phar 

mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

wp config create	--allow-root \
						--dbname=$db_name \
						--dbuser=$db_user \
						--dbpass=$db_pwd \
						--dbhost=mariadb --path='/var/www/html'


wp core install --url=$wp_url/ --title=$wp_title --admin_user=$wp_admin --admin_password=$wp_admin_pwd --admin_email=$wp_admin_email --skip-email --allow-root

wp user create $wp_usr $wp_usr_email --role=author --user_pass=$wp_usr_pwd --allow-root

wp theme install myknowledgebase --activate --allow-root

sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf

mkdir  /run/php

/usr/sbin/php-fpm7.4 -F
