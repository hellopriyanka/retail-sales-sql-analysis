-- customers
INSERT INTO customers VALUES 
(1, 'Alice', 'Delhi', '2023-01-10'),
(2, 'Bob', 'Mumbai', '2023-02-12'),
(3, 'Charlie', 'Bangalore', '2023-03-14');
    

-- products
INSERT INTO products VALUES
(1, 'T-Shirt', 'Apparel', 500),
(2, 'Jeans', 'Apparel', 1200),
(3, 'Sneakers', 'Footwear', 2500);

-- orders
INSERT INTO orders VALUES
(1, 1, '2023-05-01', 1700),
(2, 2, '2023-06-15', 2500);

-- order_items
INSERT INTO order_items VALUES
(1, 1, 1, 2), -- 2 T-Shirts
(2, 1, 2, 1), -- 1 Jeans
(3, 2, 3, 1); -- 1 Sneakers