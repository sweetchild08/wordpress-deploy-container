FROM wordpress:5.4.1

EXPOSE 80

# COPY ./duplicator-files/install.php /var/www/html
VOLUME /var/html/www

# RUN apt-get update -y && apt-get install -y \
#     mariadb-client \
#     unzip

# COPY ./duplicate-entrypoint.sh /usr/local/bin/duplicate-entrypoint.sh
# COPY ./restore-duplicate.sh /usr/local/bin/restore-duplicate.sh
# COPY ./wait-for-it.sh /usr/local/bin/wait-for-it.sh

# ENTRYPOINT ["duplicate-entrypoint.sh"]
CMD ["apache2-foreground"]
