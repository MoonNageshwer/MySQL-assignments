-- 1)List the customers in the United States with a credit limit higher than \$1000.
use classicmodels;
select * from customers;
select * from employees;
select * from offices;
select customerName from customers where country = "USA" and creditLimit > 1000;
-- 2)List the employee codes for sales representatives of customers in Spain, France and Italy.
select salesRepEmployeeNumber,country from customers where country = "France" or country = "Spain" or country = "Italy";
#OR
select salesRepEmployeeNumber,country from customers where country in ("France" ,"Spain","Italy");
#1370,1337,1702,1401
#2A) Make another query to list the names and email addresses of those employees.
select * from employees;
select email,firstName from employees where employeeNumber in (1370,1337,1702,1401);

-- 3)Change the job title "Sales Rep" to "Sales Representative"
update employees set jobTitle = "Sales Representative" where jobTitle = "Sales Rep";

-- 4)Delete the entries for Sales Representatives working in London.
select * from customers;
select city,salesRepEmployeeNumber from customers where city = "London";
select * from employees;
delete from employees where employeeNumber = 1501; #shows an error
delete from customers where salesRepEmployeeNumber = 1501;

-- 5)Show a list of employees who are not sales representatives
select * from employees where jobTitle != "Sales Reprrsentative ";

-- 6)Show a list of customers with "Toys" in their name
select  * from customers where customerName like "%Toys%";

-- 7)Show the total payments received month by month for every year.
select * from payments;
select year(paymentDate) as Year,month(paymentDate) as Month,sum(amount) from payments group by Year, Month order by year ;

-- 8) For the above query, format the amount properly with a dollar symbol and comma separation (e.g $26,267.62), and also show the month as a string (month name).
#format(), date_format(),round(),concat()
desc payments;
select year(paymentDate) as Year,date_format(paymentDate,"%b") as month_name, concat("$",format(sum(amount),0)) from payments group by Year, month_name order by year,month_name;
# %Y ==> 4 digit year
# %M ==> whole month name
# %b ==> 3 letters of month name

#What is the average percentage markup of the MSRP on buyPrice?
select * from products;
select avg((MSRP-buyPrice)/buyPrice*100) as avg_percentage from products;

-- Prepare a list of offices sorted by country, state, city.
select * from offices;
select officeCode,city,state,country from offices order by country, state, city;

-- How many employees are there in the company?
select * from employees;
select count(*) from employees;

-- What is the total of payments received?
select * from payments;
select sum(amount) as total_payments from payments ;

-- List the product lines that contain 'Cars'.
select * from productlines;
select  productLine from productlines where productLine like "%Cars%";

-- Report total payments for October 28, 2004.
SELECT paymentDate,SUM(amount) AS total_payments FROM payments WHERE paymentDate = '2004-10-28';

-- Report those payments greater than \$100,000.
select amount from payments where amount > 100000;

-- List the products in each product line.
select * from productlines;
SELECT productLine, COUNT(*) AS product_count FROM productlines GROUP BY productLine;

-- How many products in each product line?
SELECT productLine, COUNT(*) AS product_count FROM productlines GROUP BY productLine;

-- What is the minimum payment received?
select * from payments;
select min(amount) from payments;

-- List all payments greater than twice the average payment.
SELECT * FROM payments WHERE amount > 2 * (SELECT AVG(amount) FROM payments);

-- How many distinct products does ClassicModels sell?
SELECT COUNT(DISTINCT productCode) AS distinct_product_count FROM products;
select * from products;

-- Report the name and city of customers who don't have sales representatives? 
select * from customers;
SELECT customerName, city FROM customers WHERE salesRepEmployeeNumber IS NULL;

-- What are the names of executives with VP or Manager in their title? 
-- Use the CONCAT function to combine the employee's first name and last name into a single field for reporting.
select * from employees;
SELECT CONCAT(firstName, ' ', lastName) AS full_name, jobTitle FROM employees WHERE jobTitle LIKE '%VP%' OR jobTitle LIKE '%Manager%';



