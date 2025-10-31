WITH monthly_sales AS (
	SELECT
		c.year,
		c.month,
		CASE
			WHEN c.is_weekend = 1 THEN 'Weekend'
			ELSE 'Weekday'
		END AS date_type,
		SUM(s.total_price) AS total_sales
	FROM [Sales Performance Data].[dbo].[sales] s
	LEFT JOIN [Sales Performance Data].[dbo].[calendar] c
		ON s.date = c.date
	GROUP BY
		c.year,
		c.month,
		c.is_weekend
)
SELECT
	date_type,
	ROUND(SUM(total_sales), 2) AS total_sales_overall,
	ROUND(SUM(total_sales) * 100.0 / SUM(SUM(total_sales)) OVER (), 2) AS pct_of_total
FROM monthly_sales
GROUP BY date_type
ORDER BY total_sales_overall DESC;
