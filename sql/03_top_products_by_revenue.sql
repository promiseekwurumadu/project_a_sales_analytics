SELECT
  "StockCode",
  "Description",
  ROUND(SUM("Revenue")::numeric, 2) AS revenue
FROM online_retail
GROUP BY 1, 2
ORDER BY revenue DESC
LIMIT 20;
