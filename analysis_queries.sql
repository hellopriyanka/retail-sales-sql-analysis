-- Total Revenue
SELECT 'Total Revenue:', SUM(total_amount) FROM orders;

-- Monthly Sales Trend
SELECT 'Monthly Sales:' AS header, strftime('%Y-%m', order_date), SUM(total_amount)
FROM orders
GROUP BY strftime('%Y-%m', order_date);

-- Top 5 Products by Revenue
SELECT 'Top Products:' AS header, product_name, SUM(quantity * price) as revenue
FROM order_items
JOIN products USING(product_id)
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;


--Average Order Value per Customer:
SELECT 
    c.name,
    COUNT(o.order_id) AS total_orders,
    AVG(o.total_amount) AS avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

--Most Active Customers:
SELECT 
    c.name,
    COUNT(o.order_id) AS orders_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY orders_count DESC
LIMIT 5;
