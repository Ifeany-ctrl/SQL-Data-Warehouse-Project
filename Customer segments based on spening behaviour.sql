/*Group customers into three segments based on their spending behaviour:
    - VIP: Customers with at least 12 months of history and spending ,ore than 5000.
    - Regular: Customers with at least 12 months of history but spending 5000 or less.
    - New: Customers with a lifespan less than 12 months.
And find the total number of customer by each group. */

WITH customer_spending as (
SELECT
  c.customer_key,
  SUM(f.sales_amount) AS total_spending,
  MIN(f.order_date) AS first_order,
  MAX(f.order_date) AS last_order,
  DATEDIFF (month, MIN(order_date), MAX(order_date)) as lifespan
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
  ON f.customer_key = c.customer_key
GROUP BY c.customer_key)

SELECT
customer_segment,
COUNT(customer_key) as total_customers
FROM (
SELECT
customer_key,
total_spending,
lifespan,
CASE WHEN lifespan > 12 AND total_spending > 5000 THEN 'VIP'
     WHEN lifespan >= 12 AND total_spending <= 5000 THEN 'Regular'
     ELSE 'New'
END customer_segment
FROM customer_spending) t
GROUP BY customer_segment
ORDER BY total_customers DESC;

