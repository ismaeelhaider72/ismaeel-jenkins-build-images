FROM centos:centos6
MAINTAINER  ismaeelhaider
RUN cd /etc/yum.repos.d/
#RUN mv CentOS-Base.repo CentOS-Base.repo.old
RUN rm -rf CentOS-Base.repo
RUN yum -y install httpd
COPY index.html /var/www/html/
CMD ["//sbin/httpd", "-D" , "FOREGROUND"]
EXPOSE 80
