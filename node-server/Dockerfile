FROM centos:6.4
MAINTAINER Cameron King <cking@ecc12.com>

RUN yum -y install http://download-i2.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum -y install nodejs npm
RUN useradd -mUrs /bin/false -d /var/www www

VOLUME ["/var/www"]

EXPOSE 8000
ADD start.sh /start.sh

CMD ["/start.sh"]

