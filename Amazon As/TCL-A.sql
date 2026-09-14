SELECT * from users;

-- Insert a new user
INSERT INTO users (user_name, email_id, registered_date, membership) 
VALUES
('Alice Johnson', 'alice.j@example.com', '2024-01-15', 'Prime'),
('Bob Smith', 'bob.s@example.com', '2024-02-01', 'Basic'),
('Charlie Brown', 'charlie.b@example.com', '2024-03-10', 'Prime'),
('Daisy Ridley', 'daisy.r@example.com', '2024-04-12', 'Basic'); 

-- Insert a products
INSERT INTO products (product_name, price, category, stock) 
VALUES
('Echo Dot', 49.99, 'Electronics', 120),
('Kindle Paperwhite', 129.99, 'Books', 50),
('Fire Stick', 39.99, 'Electronics', 80),
('Yoga Mat', 19.99, 'Fitness', 200),
('Wireless Mouse', 24.99, 'Electronics', 150);

SELECT * from products;

-- Insert a orders
INSERT INTO orders (user_id, order_date, total_amount) 
VALUES
(1, '2024-05-01', 79.98),
(1, '2024-05-01', 79.98),
(2, '2024-05-03', 129.99),
(1, '2024-05-04', 49.99),
(3, '2024-05-05', 24.99);

SELECT * from orders;

-- Insert a ordeRdetails
INSERT INTO orderdetails (order_id, product_id, quantity) 
VALUES
(1, 1, 2),
(2, 2, 1),
(3, 1, 1),
(4, 5, 1);

 SELECT * from orderdetails;