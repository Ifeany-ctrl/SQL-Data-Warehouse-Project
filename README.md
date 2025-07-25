Data Warehouse Project

Welcome to my Data Warehouse Project, a real-world business intelligence case study where I analyze sales, customer behavior, and product performance using advanced SQL techniques. This project demonstrates how structured queries can uncover meaningful insights from raw sales data.

Project Structure

Project Objectives

1.	Track performance of products, categories, and customers
2.	Use SQL analytics techniques to uncover trends and patterns
3.	Build reusable views to support dashboards or business reporting
4.	Segment customers for marketing or business strategy
5.	Showcase technical and business understanding of data analysis

Data Sources
This project uses a sales data model structured in a star schema with the following key tables:
Table Name          	Description
fact_sales	Transactions including date, amount, and product/customer keys
dim_products	Product metadata: name, cost, category    
dim_customers	Customer demographics and IDs             






Key Analyses

1. Yearly Sales Performance (`yearly_sales_analysis.sql`)
- Aggregates yearly sales and quantity sold
- Includes running totals using `SUM() OVER`

2. Product Performance Evaluation (`product_performance.sql`)
- Uses `LAG()` and `AVG ()` window functions
- Compares sales to the previous year and to average sales
- Highlights if a product is "Above" or "Below" average

3. Category Sales Contribution (`category_contribution.sql`)
- Computes category-level sales
- Calculates % contribution of each category to total sales
- Uses `SUM() OVER()` and `CAST/ROUND` for formatting

4. Product Cost Range Distribution (`product_cost_range.sql`)
- Buckets products into cost ranges
- Counts how many products fall within each range
- Uses `CASE` statements for cost segmentation

5. Customer Segmentation Logic (`customer_segmentation.sql`)
- Determines first/last order, total spend, and average order value
- Segments customers as:
  - `VIP` (High spend, long history)
  - `Loyal` (Moderate spend, long history)
  - `Regular` (Active but average spending)
  - `New` (Recent or low-spending customers)

6. Customer KPI View (`customer_kpi_view.sql`)
- Combines all customer KPIs into a single, query view
- Ready for use on dashboards or reporting tools


SQL Skills Demonstrated

-	Window Functions (`LAG`, `AVG`, `SUM OVER`)
-	Common Table Expressions (CTEs)
-	Complex Joins and Filtering
-	Data Bucketing via `CASE` statements
-	View Creation for Reusability
-	Aggregations, Sorting, Formatting
-	Customer Segmentation Logic

Ideal Use Cases

-	Business dashboards in Power BI, Tableau, or Looker
-	Retail or eCommerce performance reports
-	Marketing segmentation strategy
-	BI or Analyst interview portfolio project

How to Use

1.	Clone or download the repo
2.	Open the `.sql` files in your SQL environment (Snowflake, BigQuery, PostgreSQL, etc.)
3.	Adjust table/database names if necessary
4.	Run queries one by one or build on the provided view for reporting

 Future Enhancements

-	Integrate with Power BI dashboard
-	Add RFM Analysis (Recency, Frequency, Monetary)
-	Perform Churn Prediction using SQL or Python
-	Include Time Series Forecasting for sales

If You Found This Useful...
Please consider giving the repo a ⭐ star! It helps me grow and reach more people in the data community.
