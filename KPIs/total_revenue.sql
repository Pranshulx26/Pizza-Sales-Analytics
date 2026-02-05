
-- Total Revenue - The sum of the total price of all pizza orders.

SELECT ROUND(SUM(total_price), 2) AS "Total Revenue"
FROM pizza_sales