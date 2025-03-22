
-- Using tables from ConsolidatedTables.
use assignment;

-- Q1. select all employees in department 10 whose salary is greater than 3000. [table: employee]
select * from employee;
select  * from employee where deptno = 10 and salary>3000;

-- Q2. The grading of students based on the marks they have obtained is done as follows:
select * from students;
-- 40 to 50 -> Third Class
-- 50 to 60 -> Second Class
-- 60 to 80 -> First Class
-- 80 to 100 -> Distinctions
-- a. How many students have graduated with first class?
select count(*) from students where marks between 60 and 79;
-- b. How many students have obtained distinction?
select count(*) from students where marks between 80 and 100;
alter table students drop column grade;
-- Q3. Get a list of city names from station with even ID numbers only. Exclude duplicates from your answer. [table: station] 
select * from station;
select id, city from station where id /2;
-- Q4. How many cities in the CITY table have a Population larger than 100000. [table: city]
select * from city;
select count(*) from city where population>100000;
select * from city where population>100000;

-- Q5. What is the total population of California? [table: city]

select * from city;
SELECT SUM(population) AS total_population FROM city where district = "California";