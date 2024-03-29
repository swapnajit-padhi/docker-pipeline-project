FROM ubuntu 
RUN apt update -y && apt upgrade -y && apt install -y apache2
COPY ./index.html /var/www/html 
CMD ["apache2ctl", "-D", "FOREGROUND"]
