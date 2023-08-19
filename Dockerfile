FROM docker.io/centos/systemd

MAINTAINER Mahesh mahesh1@unnati.com

RUN mkdir /data1

LABEL   Install HTTPD NOW

RUN yum -y install httpd

RUN echo "Test" > /var/www/html/index.html
RUN echo "Auto deploy kubernetes pod using jenkins" >> /var/www/html/index.html


EXPOSE 80

CMD [ "httpd", "-D", "FOREGROUND"
