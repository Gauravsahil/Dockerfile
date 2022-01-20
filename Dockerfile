FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive  
RUN apt-get update  
RUN apt-get install -y  apache2
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD ["apache2ctl", "-D", "FOREGROUND"]]
