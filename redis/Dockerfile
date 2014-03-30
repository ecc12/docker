FROM centos:6.4
MAINTAINER Cameron King <cking@ecc12.com>

RUN yum -y install http://ftp.riken.jp/Linux/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum -y install redis
RUN sed -i "s/daemonize yes/daemonize no/" /etc/redis.conf

VOLUME ["/conf"]

EXPOSE 6379
ADD start.sh /start.sh

CMD ["/start.sh"]

