FROM fedora

MAINTAINER Mahesh mahesh1@unnati.com

LABEL Install HTTPD NOW

RUN yum install httpd -y

RUN echo "hello this is Docker Test 1" > /var/www/html/index.html

EXPOSE 80

CMD [ "httpd", "-D", "FOREGROUND"]
