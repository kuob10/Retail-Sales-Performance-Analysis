SELECT 
    YEAR(date) AS Year,
    MONTH(date) AS Month,
    DATENAME(MONTH, date) AS MonthName,
    COUNT(*) AS TotalTransactions,
    SUM(quantity) AS TotalQuantitySold,
    ROUND(SUM(total_price),2) AS TotalRevenue,
    ROUND(AVG(total_price),2) AS AvgTransactionValue,
    COUNT(DISTINCT customer_id) AS UniqueCustomers,
    COUNT(DISTINCT product_id) AS UniqueProducts
FROM [Sales Performance Data].[dbo].[sales]
GROUP BY YEAR(date), MONTH(date), DATENAME(MONTH, date)
ORDER BY Year, Month;