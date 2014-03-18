FROM centos:6.4
MAINTAINER Cameron King <cking@ecc12.com>

ADD nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum -y install nginx
ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
ADD start.sh /start.sh

ENTRYPOINT ["/start.sh"]

