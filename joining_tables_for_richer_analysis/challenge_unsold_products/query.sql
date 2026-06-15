SELECT * FROM products
LEFT JOIN sales ON sales.product_id = products.product_id
WHERE sales.product_id IS NULL
