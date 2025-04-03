-- SQL provides a variety of text (string) functions that enable manipulation and querying of character data. Here's a list of commonly used SQL text functions:​
use classicmodels;
-- 1.CONCAT: Combines two or more strings into one.​
-- Q1. Create a list of employees with their full names in a single column.
SELECT CONCAT(lastName, ' ', firstName) AS fullName
FROM employees;

-- 2.CHAR_LENGTH or LENGTH: Returns the number of characters in a string.​
-- Q2. Give Length of characters from first name
SELECT CHAR_LENGTH(firstName) FROM employees;
#OR
SELECT LENGTH(firstName) FROM employees;

-- 3. LOWER: Converts all characters in a string to lowercase.​
-- Q4. Display all product names in lowercase letters.
SELECT LOWER(productName) FROM products;

-- 4.UPPER: Converts all characters in a string to uppercase.​
-- Q4. Display all product names in uppercase letters.
SELECT UPPER(productName) FROM products;


-- 5. SUBSTRING or SUBSTR: Extracts a portion of a string.(like mid fn in Excel)
-- Q5. Extract characters from 3rd position in checknumber 
SELECT checknumber, SUBSTRING(checknumber, 3, length(checknumber)) FROM payments;

-- Q6. Extract 3 characters from 3rd position  in checknumber 
SELECT checknumber, SUBSTRING(checknumber, 3, 3) FROM payments;

-- 6. TRIM: Removes leading and trailing spaces from a string.​
-- Q7. Remove any leading or trailing spaces from any table.
create table trimfn(id int, name char(10));
insert into trimfn values(1,"   A"),(2,"B   "),(3,"C");
select * from trimfn;
SELECT name, TRIM(name) AS trimmedName FROM trimfn;

-- 7. LTRIM: Removes leading spaces from a string.​
SELECT name, LTRIM(name) AS trimmedName FROM trimfn;

-- 8. RTRIM: Removes trailing spaces from a string.​
SELECT name, RTRIM(name) AS trimmedName FROM trimfn;

-- 9.REPLACE: Replaces occurrences of a specified substring within a string with another substring.​
-- Q8. In productLine, replace occurrences of the word 'Motorcycle' with 'bicycle'.
SELECT productLine, REPLACE(productLine, 'Motorcycle', 'bicycle') AS updatedproductLine
FROM products;

-- 10. REVERSE: Reverses the characters in a string.​
-- Q. 9. Reverse Customer Names
SELECT customerName, REVERSE(customerName) AS reversedName
FROM customers;

-- 11.LEFT: Returns the leftmost characters from a string.​
-- Q10. Extrcat first 4 letter from City
SELECT City, Left(City,4) AS ExtrctedChar
FROM customers;

-- 12.RIGHT: Returns the rightmost characters from a string.​
-- Q11. Extrcat last 4 letter from City
SELECT City, right(City,4) AS ExtrctedChar
FROM customers;

-- 13.POSITION or CHARINDEX: Finds the starting position of a substring within a string.​
-- Q12. Find the position of the substring 'S10' within each product code.​
SELECT productCode, POSITION('S10' IN productCode) AS position
FROM products ;
#OR we can filter "S10"
SELECT productCode, POSITION('S10' IN productCode) AS position
FROM products
WHERE productCode LIKE '%S10%';

-- 14.FORMAT: Formats a value with a specified format (e.g., dates, numbers).​
-- Q13. Format amount column ==> add dollar symbol before amont
-- First we have to convert amount in text format after we can concat $ symbol
SELECT CONCAT('$', FORMAT(amount, 2)) AS formatted_amount
FROM payments;
#with 0 decimal point
SELECT CONCAT('$', FORMAT(amount, 0)) AS formatted_amount
FROM payments;
#e.g
  SELECT DATE_FORMAT('2025-03-28', '%M %d, %Y') AS FormattedDate;
  -- Output: 'March 28, 2025'

-- 15.ASCII: Returns the ASCII value of the first character in a string.​
SELECT ASCII('a') AS AsciiValue;
SELECT ASCII('#') AS AsciiValue;
-- 16.CHAR: Converts an ASCII value to its corresponding character.​
SELECT CHAR(1) AS AsciiValue;
