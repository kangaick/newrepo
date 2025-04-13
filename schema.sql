-- Create the database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS bookstore;

-- Use the bookstore database
USE bookstore;

-- Authors table (store authors' information)
CREATE TABLE IF NOT EXISTS authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Books table (store book information)
CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    publish_date DATE,
    author_id INT,
    publisher_id INT,
    language_id INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(id),
    FOREIGN KEY (language_id) REFERENCES languages(id)
);

-- Publishers table (store publisher information)
CREATE TABLE IF NOT EXISTS publishers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Languages table (store supported languages for books)
CREATE TABLE IF NOT EXISTS languages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Customers table (store customer information)
CREATE TABLE IF NOT EXISTS customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone_number VARCHAR(20)
);

-- Customer Address table (store customer address information)
CREATE TABLE IF NOT EXISTS customer_addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    address VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Orders table (store customer orders)
CREATE TABLE IF NOT EXISTS orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(50),
    total_amount DECIMAL(10, 2),
    shipping_method_id INT,
    shipping_address VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (shipping_method_id) REFERENCES shipping_methods(id)
);

-- Order Lines table (store the books that are part of an order)
CREATE TABLE IF NOT EXISTS order_lines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- Shipping Methods table (store different shipping methods)
CREATE TABLE IF NOT EXISTS shipping_methods (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    cost DECIMAL(10, 2)
);

-- Order History table (store status history for orders)
CREATE TABLE IF NOT EXISTS order_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    status VARCHAR(50),
    change_date DATETIME,
    FOREIGN KEY (order_id) REFERENCES orders(id)
);

-- Addresses table (store all addresses in the system)
CREATE TABLE IF NOT EXISTS addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20)
);

-- Example: Adding a sample language and publisher
INSERT INTO languages (name) VALUES ('English'), ('Spanish'), ('French');
INSERT INTO publishers (name) VALUES ('Penguin Random House'), ('HarperCollins');

-- Sample data for authors
INSERT INTO authors (name) VALUES ('George Orwell'), ('J.K. Rowling'), ('J.R.R. Tolkien');

-- Sample data for customers
INSERT INTO customers (first_name, last_name, email) 
VALUES 
('John', 'Doe', 'johndoe@example.com'),
('Jane', 'Smith', 'janesmith@example.com');
