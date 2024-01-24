FROM remote-host



RUN apt-get update && \
    apt-get install -y \
    wget \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# Add Nginx repository
RUN echo "deb http://nginx.org/packages/mainline/ubuntu/ $(lsb_release -cs) nginx" >> /etc/apt/sources.list.d/nginx.list \
    && echo "deb-src http://nginx.org/packages/mainline/ubuntu/ $(lsb_release -cs) nginx" >> /etc/apt/sources.list.d/nginx.list \
    && wget https://nginx.org/keys/nginx_signing.key \
    && apt-key add nginx_signing.key \
    && rm nginx_signing.key

# Install Nginx
RUN apt-get update && \
    apt-get install -y nginx




# Start Nginx in the foreground when the container runs
CMD ["nginx", "-g", "daemon off;"]



# Update the package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository ppa:ondrej/php && \
    apt-get update
    
RUN    apt-get install -y openssl \
        php7.1-fpm \
        php7.1-cli \
        php7.1-mysql \
        php7.1-soap \
        php7.1-xml \
        php7.1-zip \
        php7.1-json \
        php7.1-mcrypt \
        php7.1-mbstring \
        php7.1-gd && \

    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy nginx configuration and startup script
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf


# Expose ports and define volumes
EXPOSE 8000 443
VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

# Start nginx and PHP-FPM when the container starts
CMD ["nginx", "-g", "daemon off;"]


