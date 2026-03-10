
-- Question 1 Total Revenue

WITH CTE1 AS
(
SELECT O.product_id, product_name, SUM(quantity) AS total_quantity
FROM orders AS O
JOIN products AS P
ON O.product_id = P.product_id
GROUP BY product_id
),
CTE2 AS
(
SELECT C.product_id, C.product_name, total_quantity, (total_quantity * price) AS total_price
FROM CTE1 AS C
JOIN products AS P
ON C.product_id = P.product_id
)

SELECT SUM(total_price) AS Total_revenue
FROM CTE2;


-- 2. Revenue by product

WITH CTE1 AS
(
SELECT O.product_id, product_name, SUM(quantity) AS total_quantity
FROM orders AS O
JOIN products AS P
ON O.product_id = P.product_id
GROUP BY product_id
)

SELECT C.product_id, C.product_name, total_quantity, (total_quantity * price) AS total_price
FROM CTE1 AS C
JOIN products AS P
ON C.product_id = P.product_id
ORDER BY 4 DESC;


-- 3.Top customers

CREATE TABLE all_data AS
SELECT order_id, customer_name, order_date, product_name, category, quantity, (quantity * price) AS order_price
FROM customers c 
JOIN orders o
ON c.customer_id = o.customer_id
JOIN products p
ON o.product_id = p.product_id;

SELECT *
FROM all_data;

SELECT customer_name, SUM(order_price) AS total_spent
FROM all_data
GROUP BY customer_name
ORDER BY 2 DESC;


-- 4. Sales by Category

SELECT category, SUM(order_price) AS sales
FROM all_data
GROUP BY category
ORDER BY 2 DESC;


-- 5.Sales by city

SELECT city, SUM(order_price) AS total_sales
FROM customers c
JOIN all_data ad
ON c.customer_name = ad.customer_name
GROUP BY city
ORDER BY 2 DESC;


-- 6.Monthly Revenue Trend

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(order_price) AS total_revenue
FROM all_data
GROUP BY month;


-- 7. Best selling products

SELECT product_name, SUM(quantity) AS sales
FROM all_data
GROUP BY product_name
ORDER BY 2 DESC;


-- 8. Customers with multiple orders

SELECT customer_name, COUNT(customer_name) AS orders
FROM all_data
GROUP BY customer_name
HAVING orders > 1
ORDER BY 2 DESC;


-- 9 Average order value

SELECT AVG(order_total) AS average_order_value
FROM (
    SELECT 
        order_id,
        SUM(order_price) AS order_total
    FROM all_data
    GROUP BY order_id
) AS order_summary;

