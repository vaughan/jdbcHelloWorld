create database jdbcHelloWorld;
create user if not exists jdbcHelloWorld;
alter user jdbcHelloWorld identified by 'jdbcHelloWorld';
grant all on jdbcHelloWorld.* to 'jdbcHelloWorld'@'%';
CREATE TABLE jdbcHelloWorld.people (
  ID int AUTO_INCREMENT,
  firstName varchar(255),
  lastName varchar(255),
  age int,
  PRIMARY KEY (ID)
 );
insert into jdbcHelloWorld.people (firstName, lastName, age) values ('Linus', 'Torvolds', 47);
insert into jdbcHelloWorld.people (firstName, lastName, age) values ('Mark', 'Shuttleworth', 44);
