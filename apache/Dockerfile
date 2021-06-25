FROM debian

RUN apt-get update && \
    apt-get install -y apache2 libapache2-mod-log-sql-mysql default-mysql-client vim
RUN a2enmod unique_id
RUN touch /var/log/mod_log_sql-preserve && \
    chmod go+w /var/log/mod_log_sql-preserve && \
    sed -i "s#19#25#g" /usr/share/doc/libapache2-mod-log-sql/create_tables.sql
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

CMD apachectl -D FOREGROUND
