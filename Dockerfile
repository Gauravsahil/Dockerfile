FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive  
RUN apt-get update  
RUN apt-get install -y  apache2
RUN rm -f /var/www/html/index.html
COPY /index.html /var/www/html/index.html
EXPOSE 8080
CMD ["apache2ctl", "-D", "FOREGROUND"]]
