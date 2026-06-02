
SELECT * FROM pizza_sales_data

SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales_data
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC

SELECT pizza_category,
SUM(quantity) AS Total_Pizza_Quantity 
from pizza_sales_data
GROUP BY pizza_category
ORDER BY Total_Pizza_Quantity DESC;

SELECT pizza_size,
SUM(total_price)  AS Total_Sales, 
SUM(total_price) *100/
(SELECT SUM(total_price) from pizza_sales_data) AS PCT
FROM pizza_sales_data
GROUP BY pizza_size
ORDER BY PCT DESC;
