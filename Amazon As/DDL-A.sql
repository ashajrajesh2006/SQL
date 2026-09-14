-- Data Definition Language
-- 1) Creating a Database
-- Create a database named 'amazon_db'
CREATE DATABASE amazon_db;
-- Switch to the new database
USE amazon_db;
SHOW databases;
-- 2) Creating Tables
-- Create a table named 'Users'
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    email_id  VARCHAR(150) UNIQUE NOT NULL,
    registered_date DATE NOT NULL,
    membership ENUM('Basic', 'Prime') DEFAULT 'Basic'
    ); 
    
    SELECT * from users;
    
CREATE TABLE products (
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(200) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(100) NOT NULL,
	stock INT NOT NULL
    ); 
    SELECT * from products;
 
 CREATE TABLE orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    FOREIGN KEY  (user_id) REFERENCES users (user_id),
    order_date DATE  NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL
    );
    SELECT * from orders;
    
CREATE TABLE orderdetails ( 
	order_details_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT, 
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
	product_id INT, 
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    quantity INT NOT NULL
    );
    
    SELECT * from orderdetails;
    
    
    
		