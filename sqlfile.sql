--join queries using inner join
--select the table to view the attribuites in entites
SELECT * FROM sales_record

SELECT * FROM product_record

SELECT customer, units_sold, product_name, price, s.product_id
FROM sales_record AS s
JOIN
product_record AS p ON s.Product_ID=p.Product_ID

--calculate the amount earn in each transaction or oder
SELECT customer, units_sold, price, product_name, (units_sold *price) AS selling_price
FROM sales_record s
JOIN
product_record p ON s.product_ID=p.Product_ID


--calculating profit
SELECT customer, units_sold, price, product_name, (units_sold * price) AS selling_price, (units_sold * Production_cost) AS Production_price, ((units_sold * price)-(units_sold * production_cost)) AS profit
FROM sales_record s
JOIN
product_record p ON s.product_ID=p.Product_ID

--calculate the profit made from each product 
SELECT product_name, SUM((units_sold *price)) AS total_sales_per_product,
SUM((units_sold *production_cost)) AS production_cost,
SUM(((units_sold *price)-(units_sold *production_cost))) AS PROFIT
FROM sales_record s
JOIN product_record p ON s.product_ID=p.product_ID
GROUP BY product_name
ORDER BY PROFIT DESC


--calculate the profit made from each product 
SELECT product_name,SUM(((units_sold *price)-(units_sold *production_cost))) AS PROFIT
FROM sales_record s
JOIN product_record p ON s.product_ID=p.Product_ID
GROUP BY product_name
ORDER BY PROFIT DESC