CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE IF NOT EXISTS Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);
CREATE TABLE IF NOT EXISTS books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY(Author_id) REFERENCES authors(author_Id)
);
CREATE TABLE IF NOT EXISTS customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
CREATE TABLE IF NOT EXISTS orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE IF NOT EXISTS order_details(
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY(order_id) REFERENCES orders(order_id),
    FOREIGN KEY(book_id) REFERENCES books(book_id)
);