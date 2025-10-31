SELECT 
	SUM(s.quantity) total_sales
	,c.holiday_flag
  FROM [Sales Performance Data].[dbo].[sales] s
  LEFT JOIN [Sales Performance Data].[dbo].[calendar] c 
		ON s.date = c.date
  GROUP BY c.holiday_flag
  ORDER BY total_sales desc;
