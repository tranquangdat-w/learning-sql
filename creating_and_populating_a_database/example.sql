START TRANSACTION;

use sakila;

SHOW databases;


SELECT now();

show character set;

SHOW TABLES;

create table test(name varchar(20));
select * from test;

ROLLBACK;

SELECT * from test;

