FROM debian:bullseye

RUN apt update -y

RUN apt install -y nginx && apt install openssl -y

COPY tools/script.sh /

COPY tools/nginx.conf /etc/nginx/sites-available/default

RUN chmod +x script.sh

EXPOSE 443

CMD [ "./script.sh" ]