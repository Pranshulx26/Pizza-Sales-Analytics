
-- Percentage of Sales by Pizza Size

SELECT 
	pizza_size, 
	ROUND(SUM(total_price), 2) AS "Total Price", 
	ROUND(CAST(SUM(total_price) AS FLOAT) 
		/ (SELECT SUM(total_price) FROM pizza_sales) * 100.0, 2) AS "Percentage Sales By Pizza Size"
FROM pizza_sales
GROUP BY pizza_size 
ORDER BY 2 DESC