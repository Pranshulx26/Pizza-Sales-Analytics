



-- Top 5 Least Sellers by Revenue, Total Quantity and Total Orders

-- Top 5 Least selling pizza by revenue
SELECT TOP 5 
	pizza_name, 
	SUM(total_price) AS "Total Revenue"
FROM pizza_sales 
GROUP BY pizza_name 
ORDER BY "Total Revenue" 

-- Top 5 Least selling pizza by Total Quantity
SELECT TOP 5 
	pizza_name, 
	SUM(quantity) AS "Total Quantity"
FROM pizza_sales 
GROUP BY pizza_name 
ORDER BY "Total Quantity" 

-- Top 5 Least selling pizza by Total Orders 
SELECT TOP 5 
	pizza_name, 
	COUNT(DISTINCT order_id) AS "Total Orders"
FROM pizza_sales 
GROUP BY pizza_name 
ORDER BY "Total Orders" 
