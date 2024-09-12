SELECT TOP(10) * FROM Superstore

--fetching specified column
SELECT ship_mode, customer_name
FROM Superstore

--using aliase and calculate the unit price of each quantity
SELECT Product_name, customer_name as name_, (sales/quantity) as unit_price
FROM Superstore

--using where clause
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE quantity >4;

SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE quantity BETWEEN 2 AND 4;

SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE quantity >=2 AND Quantity < 5

--using WHERE CLAUSE AND LIKE OPERATOR 
--start word LIKE
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE City LIKE 'A%'and Quantity < 4
--end word LIKE
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE City LIKE '%ON'

--Middle or in between LIKE
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE City LIKE '%_m%'

--using IN operator to find transaction of Ken Black, Joel Eaton, Ryan Crowe
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE Customer_name IN ( 'Ken Black', 'Joel Eaton', 'Ryan Crowe')

--ORDER CLAUSE
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE Customer_name IN ( 'Ken Black', 'Joel Eaton', 'Ryan Crowe')
ORDER BY Quantity desc

--GROUP BY CLAUSE
SELECT City FROM Superstore 
GROUP BY City

SELECT City, count(*) as customer_count FROM Superstore 
GROUP BY City

SELECT City FROM Superstore 
GROUP BY City
HAVING Count(*) >100;

SELECT City, count(*) as customer_count FROM Superstore 
GROUP BY City
HAVING Count(*) >100;


SELECT city, SUM(Sales) AS Total_sales
FROM superstore
GROUP BY City
ORDER BY Total_sales DESC

SELECT city, SUM(Sales) AS Total_sales, MAX(Quantity) AS max_quantity, count(*) as 'number of transacton'
FROM superstore
GROUP BY City
ORDER BY Total_sales DESC
