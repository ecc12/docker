FROM centos:6.4
MAINTAINER Cameron King <cking@ecc12.com>

ADD nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum -y install nginx
ADD nginx.conf /etc/nginx/nginx.conf
RUN mkdir /data

VOLUME /data
EXPOSE 80
EXPOSE 443
ADD start.sh /start.sh

CMD ["/start.sh"]

