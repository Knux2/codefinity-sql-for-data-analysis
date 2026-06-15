SELECT sale_date, COUNT(*) AS sales_count
FROM sales
GROUP BY sale_date
HAVING COUNT(*) > 2;