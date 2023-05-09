FROM alpine
WORKDIR /app
RUN apk update && apk add nano
RUN apk add mini_httpd
RUN apk add openrc
CMD mkdir /www
CMD chown minihttpd /www
CMD mv /etc/mini_httpd/mini_httpd.conf /etc/mini_httpd/mini_httpd.conf.orig
COPY mini_httpd.conf /etc/mini_httpd/mini_httpd.conf
CMD cat /etc/mini_httpd/mini_httpd.conf
COPY index.html /www
CMD rc-service mini_httpd start
