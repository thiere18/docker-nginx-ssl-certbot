FROM ubuntu:20.04

RUN apt update -y \
    && apt install nginx -y \
    && apt-get install software-properties-common -y \
    && add-apt-repository -r ppa:certbot/certbot -y \
    && apt-get update -y \
    && apt-get install python3-certbot-nginx -y \
    && apt-get clean

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
