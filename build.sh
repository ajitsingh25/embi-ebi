#!/bin/sh

IP=$(hostname -I | awk -F ' ' '{print $1}')
sed -e "s#INSTANCE_IP#$IP#g" db/init.sql.tmp > db/init.sql
sed -e "s#INSTANCE_NAME#$(hostname)#g" apache/000-default.conf.tmp > apache/000-default.conf
docker-compose down
#docker volume rm test_data-mysql
docker-compose up -d
#docker-compose logs -f
