FROM centos:6.4
MAINTAINER Cameron King <cking@ecc12.com>

RUN yum -y install http://ftp.riken.jp/Linux/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum -y install mongodb-server
RUN sed -i "s/fork = true/fork = false/" /etc/mongodb.conf

VOLUME ["/conf"]

EXPOSE 27017
EXPOSE 27018
EXPOSE 27019
EXPOSE 28017
ADD start.sh /start.sh

CMD ["/start.sh"]

