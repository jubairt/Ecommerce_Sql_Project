use ecommercedb;
-- Create the customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20)
);

-- Create the dates Table
CREATE TABLE date_dim (
    date_id INT PRIMARY KEY,
    full_date DATE,
    year INT,
    month INT,
    day INT,
    day_of_week VARCHAR(10)
);

-- Create the products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Create the stores Table
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(255) NOT NULL,
    location VARCHAR(100) NOT NULL
);


-- Create the orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    date_id INT,
    store_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
);


