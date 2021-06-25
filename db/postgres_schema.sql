
CREATE ROLE postgres WITH LOGIN encrypted password 'postgres';
CREATE DATABASE postgresdb;
CREATE TABLE accesslog (id serial NOT NULL PRIMARY KEY, log_line json NOT NULL, created_at TIMESTAMP NOT NULL);
GRANT ALL PRIVILEGES ON DATABASE postgresdb to postgres;
GRANT ALL PRIVILEGES ON ALL TABLES in SCHEMA public to postgres;
GRANT ALL PRIVILEGES ON ALL SEQUENCES in SCHEMA public to postgres;
