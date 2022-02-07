FROM centos:centos6
MAINTAINER  ismaeelhaider
RUN cd /etc/yum.repos.d/
#RUN mv CentOS-Base.repo CentOS-Base.repo.old
RUN rm -rf CentOS-Base.repo
COPY CentOS-Base.repo /etc/yum.repos.d/
RUN yum clean all
RUN yum -y update 
RUN yum -y install httpd
COPY index.html /var/www/html/
CMD ["//sbin/httpd", "-D" , "FOREGROUND"]
EXPOSE 80
