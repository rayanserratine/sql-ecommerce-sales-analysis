INSERT INTO customers (customer_id, customer_name, city, country) VALUES
(1, 'Alice Johnson', 'Toronto', 'Canada'),
(2, 'Bruno Silva', 'Vancouver', 'Canada'),
(3, 'Carla Mendes', 'Calgary', 'Canada'),
(4, 'Daniel Smith', 'Montreal', 'Canada'),
(5, 'Emma Brown', 'Ottawa', 'Canada'),
(6, 'Felipe Costa', 'Toronto', 'Canada'),
(7, 'Grace Lee', 'Vancouver', 'Canada'),
(8, 'Hugo Martins', 'Calgary', 'Canada');

INSERT INTO products (product_id, product_name, category, price) VALUES
(101, 'Laptop', 'Electronics', 1200.00),
(102, 'Headphones', 'Electronics', 150.00),
(103, 'Office Chair', 'Furniture', 300.00),
(104, 'Desk Lamp', 'Furniture', 45.00),
(105, 'Backpack', 'Accessories', 80.00),
(106, 'Keyboard', 'Electronics', 100.00);

INSERT INTO orders (order_id, customer_id, product_id, order_date, quantity) VALUES
(1001, 1, 101, '2026-01-05', 1),
(1002, 2, 102, '2026-01-07', 2),
(1003, 3, 103, '2026-01-10', 1),
(1004, 4, 104, '2026-01-12', 3),
(1005, 5, 105, '2026-01-15', 2),
(1006, 6, 106, '2026-01-18', 1),
(1007, 7, 101, '2026-01-20', 1),
(1008, 8, 102, '2026-01-22', 1),
(1009, 1, 105, '2026-02-01', 1),
(1010, 2, 103, '2026-02-03', 1),
(1011, 3, 106, '2026-02-05', 2),
(1012, 4, 101, '2026-02-08', 1),
(1013, 5, 104, '2026-02-10', 2),
(1014, 6, 102, '2026-02-12', 1),
(1015, 7, 105, '2026-02-15', 3),
(1016, 8, 103, '2026-02-18', 1),
(1017, 1, 106, '2026-02-20', 1),
(1018, 2, 101, '2026-02-22', 1),
(1019, 3, 104, '2026-02-25', 2),
(1020, 4, 105, '2026-02-28', 1);

