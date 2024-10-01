FROM debian:buster

# Install dependencies
RUN apt update && apt install -y \
    nginx \
    vim \
    openssl

# Copy custom Nginx config
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

# Create SSL directories
RUN mkdir -p /etc/ssl/certs && \
    mkdir -p /etc/ssl/private

# Expose ports
EXPOSE 80 443 8080

# Set environment variables
ENV NGINX_HOSTNAME=ngenadie.42.fr
ENV NGINX_PORT=8080
COPY ./certs/nginx.crt /etc/ssl/certs/
COPY ./certs/nginx.key /etc/ssl/private/
# CMD to run Nginx
CMD ["nginx", "-g", "daemon off;"]

