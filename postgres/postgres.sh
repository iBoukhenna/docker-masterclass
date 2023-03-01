pgsql -U postgres

create database "test-db";
drop database "test-db";

\c test-db;

docker cp postgres.container:/dump-local.pgsql dump-local.pgsql

pg_dump -U postgres test-db > dump-local.pgsql

docker cp dump-local.pgsql postgres.container:/dump-local.pgsql

psql -U postgres test-db < dump-local.pgsql
