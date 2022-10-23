#This DockerFile Written By CloudBoost Team
#This file will build image based on ubuntu 20.04 and required packages to deploy a Laravel APP.

FROM ubuntu:20.04

############################
#####  CONFIG ZONE #########

ENV APP_DB=s
ENV APP_DB_USER=
ENV APP_DB_PASS=
ENV DB_FILE=

ENV WEB_SERVER=

ENV GIT_REPO=https://team_cloudboost:ATBBz5Xswgg7WZdcHSy8rqcQMfjP6A5CA97F@bitbucket.org/appincubators/glue.git
ENV GIT_BRANCH=Master
ENV GIT_APP_FOLDER=.

############ END ###########




WORKDIR /cloudboost

COPY ./Entrypoint/* /cloudboost/
COPY ./NGINX/* /cloudboost/nginx/


ENV TZ=Asia/Dhaka \
    DEBIAN_FRONTEND=noninteractive




# Here we are going to install required packages for our Laravel Project
RUN apt update -y; \
    apt install lsb-release ca-certificates apt-transport-https software-properties-common curl unzip mysql-server git nginx -y --no-install-recommends; \
    add-apt-repository ppa:ondrej/php -y; \ 
    apt install php8.1 php8.1-bcmath php8.1-xml php8.1-fpm php8.1-mysql php8.1-zip php8.1-intl php8.1-ldap php8.1-gd php8.1-cli php8.1-bz2 php8.1-curl php8.1-mbstring php8.1-pgsql php8.1-opcache php8.1-soap php8.1-cgi -y --no-install-recommends; \
    sed -i 's/;extension=gd/extension=gd/g' /etc/php/8.1/cli/php.ini; \
# Composer Installation Starting Here
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer; \

# Database Server Installation and Create Access Credentials and Database for Glue APP.

    service mysql start; \
    mysql -uroot -e "CREATE DATABASE $APP_DB;"; \
    mysql -uroot -e "CREATE USER $APP_DB_USER@'localhost' IDENTIFIED BY '$APP_DB_PASS';"; \
    mysql -uroot -e "GRANT ALL ON $APP_DB.* TO $APP_DB_USER@'localhost';"; \

# Confiure Web Server. we are using nginx as our web server.

    cp /cloudboost/nginx/* /etc/nginx/sites-available/$WEB_SERVER.conf; \
    ln -s /etc/nginx/sites-available/$WEB_SERVER.conf /etc/nginx/sites-enabled/$WEB_SERVER.conf; \
    rm -rf /etc/nginx/sites-enabled/default; \
    sed -i "s/IP_ADDRESS_OR_DOMAIN/$WEB_SERVER/g" /etc/nginx/sites-enabled/$WEB_SERVER.conf; \
    sed -i "s,/var/www/html/,/var/www/html/$GIT_APP_FOLDER/public,g" /etc/nginx/sites-enabled/$WEB_SERVER.conf; \

# Pull Glue Application from GitBucket
    cd /var/www/html; \
    git init; \
    git remote add origin $GIT_REPO; \
    git fetch origin; \
    git checkout origin/$GIT_BRANCH -- $GIT_APP_FOLDER; \

# Confiure Glue App .env file and install dependancies using Composer

    cd /var/www/html/$GIT_APP_FOLDER; \
    sed -i "s/.*DB_DATABASE=.*/DB_DATABASE=$APP_DB/" /var/www/html/$GIT_APP_FOLDER/.env; \
    sed -i "s/.*DB_USERNAME=.*/DB_USERNAME=$APP_DB_USER/" /var/www/html/$GIT_APP_FOLDER/.env; \
    sed -i "s/.*DB_PASSWORD=.*/DB_PASSWORD=$APP_DB_PASS/" /var/www/html/$GIT_APP_FOLDER/.env; \
    composer install; \
    php artisan key:generate; \
    mysql -uroot $APP_DB < /var/www/html/$GIT_APP_FOLDER/$DB_FILE; \

# Set Permission   
    chown -R www-data:www-data /var/www/html/$GIT_APP_FOLDER/storage; \
    chown -R www-data:www-data /var/www/html/$GIT_APP_FOLDER/bootstrap/cache;

# Export Port 80 to access the web app
EXPOSE 80/tcp

# Run Scripts to start nginx, mysql, phpfpm automatically on container boot
RUN ["chmod", "+x", "/cloudboost/startup.sh"]
ENTRYPOINT ["sh", "/cloudboost/startup.sh"]
