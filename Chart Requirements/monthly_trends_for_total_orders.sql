
-- Monthly Trends For Total Orders

SELECT DATENAME(MM, order_date) AS "Order Month", COUNT(DISTINCT order_id) AS "Total Orders"
FROM pizza_sales
GROUP BY DATENAME(MM, order_date)
ORDER BY "Total Orders" DESC