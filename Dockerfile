FROM alpine:edge
RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories  && \
    apk add --no-cache \
    apache2 \
    curl \
    php7 \
    php7-apache2 \
    php7-ctype \     
    php7-curl \     
    php7-dom \    
    php7-gd \     
    php7-iconv \
    php7-intl \    
    php7-json \
    php7-mbstring \
    php7-mcrypt \ 
    php7-mongodb \
    php7-opcache \
    php7-openssl \
    php7-pdo \     
    php7-phar \     
    php7-posix \
    php7-redis \
    php7-session \
    php7-tokenizer \
    php7-xml \
    php7-xmlwriter \             
    php7-xsl \
    php7-zlib && \
    mkdir -p /run/apache2 && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 
WORKDIR /var/www/localhost
COPY apache.conf /conf/apache.conf
ONBUILD COPY . /var/www/localhost
ONBUILD RUN composer install
CMD ["httpd","-DFOREGROUND","-e", "debug", "-f","/conf/apache.conf"]