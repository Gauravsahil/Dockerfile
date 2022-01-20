FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive  
RUN apt-get update  
RUN apt-get install -y  apache2
RUN echo "ServerName www.abc.com:80" >> /usr/local/etc/apache2/apache2.conf
CMD["/usr/sbin/apache2", "-D", "FOREGROUND"]]
ENTRYPOINT [“apachectl”, “-DFOREGROUND”]
