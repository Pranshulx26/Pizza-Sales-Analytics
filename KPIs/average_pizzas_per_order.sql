
-- Average Pizzas Per Order - The average number of pizzas sold per order, calculated by dividing the total number of 
--							  pizzas sold by the total number of orders.


SELECT ROUND(CAST(SUM(quantity) AS FLOAT) / COUNT(DISTINCT order_id), 2) AS "Average Pizzas Per Order"
FROM pizza_sales