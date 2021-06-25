FROM postgres:latest

RUN mkdir -p /var/lib/postgresql-static/data

ENV PGDATA /var/lib/postgresql-static/data

# copy the db init file to create the Pega schemas

COPY postgres_schema.sql /docker-entrypoint-initdb.d/
