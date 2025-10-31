Select TOP 10 p.product_name, p.category, SUM(s.quantity) AS TotalSold
FROM sales s
LEFT JOIN products p on s.product_id = p.product_id
GROUP BY p.Product_name, p.category
ORDER BY TotalSold DESC;