#!/bin/sh

IP=$(hostname -I | awk -F ' ' '{print $1}')
sed -e "s#INSTANCE_IP#$IP#g" db/init.sql.tmp > db/init.sql
docker-compose down
docker volume rm test_data-mysql
docker-compose up -d
docker-compose logs -f
