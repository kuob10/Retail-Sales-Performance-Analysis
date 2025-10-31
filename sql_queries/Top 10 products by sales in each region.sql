SELECT 
  s.date,
  s.store_id,
  s.product_id,
  s.unit_price,
  s.quantity,
  s.total_price,
  s.customer_id,

  c.month,
  c.quarter,
  c.year,
  c.is_weekend,
  c.holiday_flag,
  
  st.store_name,
  st.region,
  st.manager_name,

 
  p.product_name,
  p.category,
  p.sub_category,
 
  cu.gender,
  cu.age,
  cu.loyalty_tier,
  cu.signup_date

FROM [Sales Performance Data].[dbo].[sales] s
LEFT JOIN stores st ON s.store_id = st.store_id
LEFT JOIN products p ON s.product_id = p.product_id
LEFT JOIN customers cu ON s.customer_id = cu.customer_id
LEFT JOIN calendar c ON s.date = c.date;

