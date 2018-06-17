FROM alpine

WORKDIR /var/www/localhost/htdocs/
RUN apk add --update --no-cache lighttpd && rm -rf /var/cache/apk/*

ADD htdocs .
ADD config /etc/lighttpd/

EXPOSE 80

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
