FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive  
RUN apt-get update  
RUN apt-get install -y  apache2
RUN echo "ServerName 127.0.0.1" >> /etc/apache2/apache2.conf
CMD ["apache2ctl", "-D", "FOREGROUND"]]
