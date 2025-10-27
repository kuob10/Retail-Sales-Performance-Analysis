# Retail-Sales-Performance-Analysis
# 🧾 Sales Performance Analysis Dashboard

![Sales Dashboard Preview](images/dashboard_preview_p1.jpg)

## 📊 Overview
This project analyzes sales performance across stores, regions, and products using SQL, Excel, and Power BI.  
The goal is to uncover insights that help stakeholders understand key drivers of revenue and identify growth opportunities.

---

## 🎯 Objectives
- Identify **top-performing products, stores, and regions**
- Analyze **monthly and quarterly sales trends**
- Compare **weekend vs. weekday performance**

---

## 🧠 Key Insights
- **Top Stores:** store_id 8 had the hightest total sales at 21035  
- **Quarterly Sales Growth:** Increased by 19% from Q3 to Q4, however Q1 to Q2 had the hightest growth at 26%  
- **Weekend Sales:** Account only 30% of total Sales.  

---

## 🛠️ Tools & Technologies
| **SQL (SQL Server)** | Data extraction, cleaning, and aggregation |
| **Excel** | Data validation and exploratory analysis |
| **Power BI** | Data visualization and interactive dashboard creation |


---

## 🧩 Data Model
**Tables Used:**
- `sales` – transaction-level data including store, product, quantity, and revenue  
- `calendar` – contains date, month, quarter, and year information  
- `store` – contains store_id, store_name, manager_name, region
- `products` – information on products like product_name, category, sub_category, unit_cost


