FROM debian:bullseye

# Install dependencies
RUN apt update && apt install -y "php7.4-fpm" wordpress \
curl \
vim
# Expose ports
EXPOSE 9000 3306
ENV DB_NAME=niki_database
ENV DB_PASSWORD=password

# Set environment variables
#ENV NGINX_HOSTNAME=ngenadie.42.fr
#ENV NGINX_PORT=8080
# CMD to run Nginx
#CMD ["nginx", "-g", "daemon off;"]

