DO
$do$
 BEGIN
  IF NOT EXISTS (
    SELECT                       -- SELECT list can stay empty for this
     FROM   pg_catalog.pg_roles
     WHERE  rolname = 'jdbcHelloWorld')
   THEN
    create role "jdbcHelloWorld" with password 'jdbcHelloWorld' login;
   END IF;
 END
$do$;
create database "jdbcHelloWorld" with owner "jdbcHelloWorld";

