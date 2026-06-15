SELECT product_id, SUM(quantity) as total_quantity
FROM sales
GROUP BY product_id
ORDER BY total_quantity DESC
