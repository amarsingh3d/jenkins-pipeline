# Source Image name
from ubuntu:16.04
# Mainter Name
maintainer Amar Singh
# Command to update and install Apache packages
RUN apt-get update && apt-get install apache2 -y
# Move existing index.html file
RUN rm -f /var/www/html/index.html-bak
RUN mv /var/www/html/index.html-bak /var/www/html/index.html
# open port 
EXPOSE 80
# Command to run Apache server in background
CMD /usr/sbin/apache2ctl -D FOREGROUND


