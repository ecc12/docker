FROM haproxy:1.9-alpine
MAINTAINER Cameron King <cking@ecc12.com>

# grant the haproxy binary priviliges to bind ports <1024
RUN apk update && apk add libcap=2.26-r0 && \
    setcap CAP_NET_BIND_SERVICE=+eip /usr/local/sbin/haproxy && \
# create a non-root user for haproxy to run with
    addgroup -g 1000 -S nonroot && \
    adduser -u 1000 -S nonroot -G nonroot && \
# create a directory, writeable by the non-root user for a chroot
    mkdir /var/lib/haproxy && chmod 1777 /var/lib/haproxy

COPY default.http /default.http
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

