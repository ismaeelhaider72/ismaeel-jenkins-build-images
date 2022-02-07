FROM centos:centos6
MAINTAINER  ismaeelhaider
RUN yum -y install httpd
COPY index.html /var/www/html/
CMD ["//sbin/httpd", "-D" , "FOREGROUND"]
EXPOSE 80
