FROM ubuntu:latest
LABEL maintainer=compiler@aast.edu
ENV DEBIAN_FRONTEND=noninteractive
### Create a layer with apt update, and install apache2
RUN apt update && apt install apache2 -y
## Create a layer with file /var/www/html/index.html created
COPY iti.html /var/www/html/index.html
### Which command used when start a container
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
