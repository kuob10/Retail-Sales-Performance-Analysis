Select TOP 10
	store_id,
	ROUND(SUM(total_price),2) AS total_sales
FROM [Sales Performance Data].[dbo].[sales]
Group BY store_id
ORDER BY total_sales DESC;