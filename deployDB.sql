CREATE DATABASE dbs;
CREATE DATABASE nodebb;
ALTER USER postgres WITH PASSWORD '114514';
CREATE USER mbe WITH SUPERUSER;
ALTER USER mbe WITH PASSWORD '114514';
--change your password when not dev
GRANT ALL PRIVILEGES ON DATABASE dbs TO mbe;
GRANT ALL PRIVILEGES ON DATABASE nodebb TO mbe;
CREATE USER nodebb WITH SUPERUSER;
ALTER USER nodebb WITH PASSWORD '114514';
--change your password when not dev
GRANT ALL PRIVILEGES ON DATABASE nodebb TO nodebb;