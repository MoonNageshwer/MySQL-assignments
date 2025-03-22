#To uncheck update/delete mode
SET SQL_SAFE_UPDATES =0;

-- Q1. create a database called 'assignment' (Note please do the assignment tasks in this database)
create database assignment;
use assignment;
alter table employee drop column deptno1;


-- Q2. Create the tables from ConsolidatedTables.sql and enter the records as specified in it
-- just open ConsolidateTable.sql file
-- select all code
-- press yellow symbol to execute all selected query
-- it will take time 
-- refresh schemas
-- uh will get diff diff tables in assignmet database 



-- Q3. Create a table called countries with the following columns countryname, population, capital    
create table country(countryname varchar(15), population int, capital varchar(15));
select * from country;
insert into country values('China', 1382, 'Beijing'),
('India', 1326, 'Delhi'),
('United States', 324, 'Washington D.C.'),
('Indonesia', 260, 'Jakarta'),
('Brazil', 209, 'Brasilia'),
('Pakistan', 193, 'Islamabad'),
('Nigeria',	187, 'Abuja'),
('Bangladesh', 163, 'Dhaka'),
('Russia', 143,	'Moscow'),
('Mexico', 128,	'Mexico City'),
('Japan', 126,	'Tokyo'),
('Philippines',	102, 'Manila'),
('Ethiopia', 101, 'Addis Ababa'),
('Vietnam', 94,	'Hanoi'),
('Egypt', 93, 'Cairo'),
('Germany',	81, 'Berlin'),
('Iran', 80, 'Tehran'),
('Turkey', 79, 'Ankara'),
('Congo', 79, 'Kinshasa'),
('France', 64, 'Paris'),
('United Kingdom',	65, 'London'),
('Italy	',	60, 'Rome'),
('South Africa', 55,	'Pretoria'),
('Myanmar',	54, 'Naypyidaw');

-- a. Insert the following data into the table
-- ('China', 1382, 'Beijing'),
-- ('India', 1326, 'Delhi'),
-- ('United States', 324, 'Washington D.C.'),
-- ('Indonesia', 260, 'Jakarta'),
-- ('Brazil', 209, 'Brasilia'),
-- ('Pakistan', 193, 'Islamabad'),
-- ('Nigeria',	187, 'Abuja'),
-- ('Bangladesh', 163, 'Dhaka'),
-- ('Russia', 143,	'Moscow'),
-- ('Mexico', 128,	'Mexico City'),
-- ('Japan', 126,	'Tokyo'),
-- ('Philippines',	102, 'Manila'),
-- ('Ethiopia', 101, 'Addis Ababa'),
-- ('Vietnam', 94,	'Hanoi'),
-- ('Egypt', 93, 'Cairo'),
-- ('Germany',	81, 'Berlin'),
-- ('Iran', 80, 'Tehran'),
-- ('Turkey', 79, 'Ankara'),
-- ('Congo', 79, 'Kinshasa'),
-- ('France', 64, 'Paris'),
-- ('United Kingdom',	65, 'London'),
-- ('Italy	',	60, 'Rome'),
-- ('South Africa', 55,	'Pretoria'),
-- ('Myanmar',	54, 'Naypyidaw');

-- b. Add a couple of countries of your choice


-- c. Change ‘Delhi' to ‘New Delhi'
update country set capital = "New Delhi" where countryname= "India";

-- Q4 Rename the table countries to big_countries .
ALTER TABLE country RENAME TO big_countries;

select * from emp;
select * from employee;
-- Q5. In emp table
-- a. Add a column called deptno
-- b. Set the value of deptno in the following order
-- deptno = 20 where emp_no is divisible by 2
-- deptno = 30 where emp_no is divisible by 3
-- deptno = 40 where emp_no is divisible by 4
-- deptno = 50 where emp_no is divisible by 5
-- deptno = 10 for the remaining records.

alter table emp add column deptno int;
select * from emp;

#if-else (when-then)
update emp set deptno=
case
	when emp_no%2=0 then 20
    when emp_no%3=0 then 30
    when emp_no%4=0 then 40
    when emp_no%5=0 then 50
    else 10
    end;
    







