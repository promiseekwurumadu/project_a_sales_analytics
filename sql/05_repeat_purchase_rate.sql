WITH customer_orders AS (
  SELECT
    "CustomerID",
    COUNT(DISTINCT "InvoiceNo") AS orders
  FROM online_retail
  GROUP BY 1
)
SELECT
  COUNT(*) AS customers,
  SUM(CASE WHEN orders >= 2 THEN 1 ELSE 0 END) AS repeat_customers,
  ROUND(
    100.0 * SUM(CASE WHEN orders >= 2 THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS repeat_purchase_rate_pct
FROM customer_orders;
