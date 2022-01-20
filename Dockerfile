FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive  
RUN apt-get update  
RUN apt-get install -y  apache2
RUN echo "ServerName 13.127.155.200:80" >> /usr/local/etc/apache2/apache2.conf
CMD["/usr/sbin/apache2", "-D", "FOREGROUND"]]
CMD [“apachectl”, “-DFOREGROUND”]
