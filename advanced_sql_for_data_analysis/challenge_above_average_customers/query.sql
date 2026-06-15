SELECT 
    customer_table.customer_id, 
    customer_table.first_name, 
    customer_table.last_name,
    SUM(sales_table.quantity) AS total_quantity
FROM customers customer_table
JOIN sales sales_table ON customer_table.customer_id = sales_table.customer_id
GROUP BY customer_table.customer_id, customer_table.first_name, customer_table.last_name
HAVING SUM(sales_table.quantity) > (
  SELECT AVG(customer_total)
  FROM (
    SELECT SUM(quantity) AS customer_total
    FROM sales
    GROUP BY customer_id
  ) AS t
);