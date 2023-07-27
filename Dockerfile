FROM centos

MAINTAINER Mahesh mahesh1@unnati.com

RUN yum install httpd -y

RUN echo "hello this is Docker Test 1" > /var/www/html/index.html

EXPOSE 8080

CMD [ "httpd", "-D", "FOREGROUND"]
