CREATE TABLE if not exists people (
  ID serial,
  firstName varchar(255),
  lastName varchar(255),
  age int,
  PRIMARY KEY (ID)
 );
insert into people (firstName, lastName, age) values ('Linus', 'Torvolds', 47);
insert into people (firstName, lastName, age) values ('Mark', 'Shuttleworth', 44);
