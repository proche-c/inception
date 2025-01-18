FROM debian:11.11
RUN apt-get update && \
    apt-get install -y nginx openssl

RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/proche-c.crt \
       -keyout /etc/nginx/ssl/proche-c.key \
       -subj "/C=ES/ST=Barcelona/L=Barcelona/O=42/OU=proche-c/CN=proche-c/"

# COPY ./conf/nginx.conf /etc/nginx/conf.d

# nginx config
RUN mkdir -p /run/nginx

#the only port allowed
EXPOSE	443

# Start nginx
CMD ["nginx", "-g", "daemon off;"]