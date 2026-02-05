
-- Average Order Value - The average amount spent per order, calculated by dividing the total revenue by the 
-- 						 total number of orders.


SELECT ROUND(SUM(total_price) / COUNT(DISTINCT order_id), 2) AS "Average Order Value"
FROM pizza_sales 
