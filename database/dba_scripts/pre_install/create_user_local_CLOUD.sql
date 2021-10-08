CREATE USER LIQUIBASE IDENTIFIED BY HRaujc09VvZpQiGQ2fz4;

grant connect to LIQUIBASE;
grant create view to LIQUIBASE;
grant create job to LIQUIBASE;
grant create table to LIQUIBASE;
grant create type to LIQUIBASE;
grant create sequence to LIQUIBASE;
grant create trigger to LIQUIBASE;
grant create procedure to LIQUIBASE;
grant create any context  to LIQUIBASE;

ALTER USER "LIQUIBASE" QUOTA UNLIMITED ON "DATA";
