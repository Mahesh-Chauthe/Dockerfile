FROM CentOS

 MAINTAINER Mahesh mahesh@unnati.com

 LABEL   Install HTTPD NOW

 RUN yum install httpd -y

 RUN echo "hello this is Docker Test" > /var/www/html/index.html

 EXPOSE 80

 CMD [ "httpd", "-D", "FOREGROUND"]
