--Monthly Sales 
Select
	c.year,
	c.month AS period, 
	CASE c.month
        WHEN 1 THEN 'Jan'
        WHEN 2 THEN 'Feb'
        WHEN 3 THEN 'Mar'
        WHEN 4 THEN 'Apr'
        WHEN 5 THEN 'May'
        WHEN 6 THEN 'Jun'
        WHEN 7 THEN 'Jul'
        WHEN 8 THEN 'Aug'
        WHEN 9 THEN 'Sep'
        WHEN 10 THEN 'Oct'
        WHEN 11 THEN 'Nov'
        WHEN 12 THEN 'Dec'
    END AS period_label,
	'Month' AS period_type,
	ROUND(SUM(s.total_price),2) AS total_sales
FROM [Sales Performance Data].[dbo].[sales] s
JOIN [Sales Performance Data].[dbo].[calendar] c
on s.date = c.date
GROUP BY c.year, c.month

UNION ALL

--Quarterly Sales
Select
	c.year,
	c.quarter AS period,
	'Quarter' AS period_type,
	CONCAT('Q', c.quarter) AS period_label,
	ROUND(SUM(s.total_price),2) AS total_sales
	FROM [Sales Performance Data].[dbo].[sales] s
	JOIN [Sales Performance Data].[dbo].[calendar] c
		ON s.date = c.date
	GROUP BY c.year,c.quarter
	-- Order Results chronologically, ordering by month # then by the period type (month or quarter) -- 
	ORDER BY year, period_type, period; 