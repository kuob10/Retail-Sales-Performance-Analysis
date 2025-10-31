WITH monthly_sales AS(
	SELECT
	c.year
	,c.month
	,CASE
		WHEN c.is_weekend = 1 THEN 'Weekend'
		ELSE 'Weekday'
	END AS date_type
	,ROUND(SUM(s.total_price),2) AS total_sales
FROM [Sales Performance Data].[dbo].[sales] s
LEFT JOIN [Sales Performance Data].[dbo].[calendar] c
	ON s.date = c.date
GROUP BY
	 c.year
	,c.month
	,c.is_weekend
)
SELECT
	year
	,month
	,date_type
	,total_sales
	,ROUND(total_sales * 100.0 / SUM(total_sales) OVER (PARTITION BY year, month),2) AS pct_month
FROM monthly_sales
ORDER BY
	 year
	,month
	,date_type;