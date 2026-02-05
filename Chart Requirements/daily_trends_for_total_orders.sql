
-- Daily Trends For Total Orders:

SELECT DATENAME(DW, order_date) AS "Order Day", COUNT(DISTINCT order_id) AS "Total Orders"
FROM pizza_sales 
GROUP BY DATENAME(DW, order_date) 
