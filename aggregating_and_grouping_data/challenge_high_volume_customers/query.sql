SELECT customer_id, SUM(quantity) AS total_quantity
FROM sales
GROUP BY customer_id
HAVING SUM(quantity) > 5;