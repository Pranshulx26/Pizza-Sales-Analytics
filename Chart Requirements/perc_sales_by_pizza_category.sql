
-- Percentage of sales by pizza category

SELECT pizza_category, ROUND("Total Sales", 2) AS "Total sales", ROUND("Total Sales" / (SELECT SUM(total_price) FROM pizza_sales) * 100, 2) AS "Percentage Sales By Category"
FROM (
	SELECT pizza_category, SUM(total_price) AS "Total Sales"
	FROM pizza_sales 
	GROUP BY pizza_category) t