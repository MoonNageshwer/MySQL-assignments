#use customers table 
-- Q1. List customers who do not have a sales representative assigned.

select * from customers;
select * from customers where salesRepEmployeeNumber is null;

-- Q2. Increase the credit limit of all customers by 10%.

update customers set creditLimit = creditLimit*1.10;

#use payments table 
select * from payments;

-- Q3.What is the total amount for customerno 103?
select sum(amount) from payments where customerNumber = 103;

-- Q4.How many entries belong to the customerno 141?
select count(customerNumber) from payments where customerNumber = 141;

-- Q5.Find the minimum and maximum amounts in the dataset.movies
select * from movies;

#Use movies table
-- Q6.What are the titles of all movies in the "Animations" category?
select * from movies where category = "Animations";

-- Q7.How many movies belong to the "Action" category?
select count(*) from movies where category = "Action";

-- Q8.Write an SQL query to update the category of "Marley and Me" from "Romance" to "Drama".
update movies set title =  "Marley and Me" where title = "Romance to Drama";

-- Q9.Retrieve all movies that belong to the "Animations" category AND have an ID greater than 2.
select * from movies where category = "Animations" and id>2;

-- Q10.Retrieve all movies where the category is "Action" OR "18+".
select * from movies where category = "Action" or category = "18+";