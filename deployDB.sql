CREATE DATABASE dbs;
CREATE DATABASE nodebb;
CREATE USER mainbackend WITH SUPERUSER;
ALTER USER mainbackend WITH PASSWORD '114514';
--change your password when not dev
GRANT ALL PRIVILEGES ON DATABASE dbs TO mainbackend;
GRANT ALL PRIVILEGES ON DATABASE nodebb TO mainbackend;
CREATE USER nodebb WITH SUPERUSER;
ALTER USER nodebb WITH PASSWORD '114514';
--change your password when not dev
GRANT ALL PRIVILEGES ON DATABASE nodebb TO nodebb;