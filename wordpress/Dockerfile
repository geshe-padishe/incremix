FROM debian:bullseye

# Install dependencies
RUN apt update && apt install -y "php7.4-fpm" wordpress \
curl \
vim
COPY conf/wp.sql ~/wp.sql
RUN cat ~/wp.sql | mysql --defaults-extra-file=/etc/mysql/debian.cnf
# Expose ports
EXPOSE 9000 3306

# Set environment variables
#ENV NGINX_HOSTNAME=ngenadie.42.fr
#ENV NGINX_PORT=8080
# CMD to run Nginx
#CMD ["nginx", "-g", "daemon off;"]

