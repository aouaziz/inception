FROM debian:bullseye

RUN apt update -y 

RUN apt install php7.4 php-fpm php-mysql mariadb-client -y

RUN apt install curl -y

COPY tools/script.sh /

RUN chmod +x script.sh

EXPOSE 9000

CMD ["./script.sh"]
