-- 1)What is the total of payments received before October 28, 2004.
select * from payments;
SELECT COUNT(*) FROM payments WHERE paymentDate<"2004-10-28";

-- 2) Report the number of customer who have made payments before October 28, 2004.
SELECT COUNT(DISTINCT customerNumber) FROM payments WHERE paymentDate<"2004-10-28"; 

-- 3) Retrieve the list of customer numbers for customer who have made a payment before October 28, 2004.
SELECT DISTINCT customerNumber FROM payments WHERE paymentDate<"2004-10-28";

-- 4) Retrieve the details all customers who have made a payment before October 28, 2004.
SELECT * FROM customers WHERE customerNumber in 
 (SELECT DISTINCT customerNumber FROM payments WHERE paymentDate<"2004-10-28");
 
-- 5)Retrieve the customer number for 10 customers who made the highest total payment in 2004.
SELECT customerNumber, SUM(amount) as totalPayment FROM payments WHERE paymentDate<"2004-10-28" 
GROUP BY customerNumber ORDER BY totalPayment DESC LIMIT 10;

-- 6)Report the account representative for each customer.
select * from customers;
select * from employees;
SELECT c.customerNumber, c.customerName, e.employeeNumber AS salesRepEmployeeNumber, e.firstName, e.lastName
FROM customers c inner JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber;

-- 7)Report total payments for Atelier graphique.
select * from payments;
select c.customerNumber,c.customerName,sum(amount) as Total_payments from customers c inner join payments p
where customerName = "Atelier graphique" group by c.customerNumber,c.customerName;

-- 8)Report the total payments by date
select sum(amount) as total_payments,paymentDate from payments group by paymentDate order by paymentDate;

-- 9)List the amount paid by each customer.
select c.customerNumber,c.customerName,sum(amount) from customers c inner join payments p
group by customerNumber,customerName;

-- 10) How many orders have been placed by Herkku Gifts?
select * from customers;
select * from orders;
select count(orderNumber) as total_orders from orders o inner join customers c on c.customerNumber=o.customerNumber
where c.customerName = "Herkku Gifts";

-- 11)Who are the employees in Boston?
select * from orderdetails;
select * from products;
select * from orders;

-- 12)List products sold by order date.
SELECT o.orderDate, p.productName, SUM(od.quantityOrdered) AS total_quantity_sold FROM orders o
JOIN orderdetails od ON o.orderNumber = od.orderNumber
JOIN products p ON od.productCode = p.productCode
GROUP BY o.orderDate, p.productName ORDER BY o.orderDate;

#13)List the order dates in descending order for orders for the 1940 Ford Pickup Truck.
select o.orderDate from orders o join orderDetails od on o.orderNumber = od.orderNumber
join products p on od.productCode = p.productCode where p.productName = "1940 Ford Pickup Truck" order by o.orderDate desc;

#14)List the products ordered on a Monday.
select distinct p.productName,o.orderDate from orders o join orderDetails od on o.orderNumber = od.orderNumber
join products p on od.productCode = p.productCode where dayofweek(o.orderDate) = 2 order by  o.orderDate;


