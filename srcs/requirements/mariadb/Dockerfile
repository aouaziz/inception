FROM debian:bullseye

RUN apt update -y

RUN apt-get install mariadb-server -y

COPY  tools/script.sh /

RUN chmod +x script.sh

EXPOSE 3306

CMD ["./script.sh"]