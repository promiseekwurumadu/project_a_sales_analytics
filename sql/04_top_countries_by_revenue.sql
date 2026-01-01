SELECT
  "Country",
  ROUND(SUM("Revenue")::numeric, 2) AS revenue
FROM online_retail
GROUP BY 1
ORDER BY revenue DESC;
