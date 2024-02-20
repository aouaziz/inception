#!/bin/bash

openssl req -x509 -nodes -out /etc/ssl/private/nginx-selfsigned.crt -keyout  /etc/ssl/private/nginx-selfsigned.key -subj "/C=MA/L=BG/O=1337/OU=student/CN=aouaziz.42.fr"

nginx -g "daemon off;"