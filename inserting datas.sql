use ecommercedb;
--  Insert Data into the customers Table
INSERT INTO customers (customer_id, first_name, last_name, email, phone) VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '123-456-7890'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '987-654-3210'),
(3, 'Michael', 'Brown', 'michaele.brown@email.com', '456-789-1234'),
(4, 'Emily', 'Davis', 'emily.davis@email.com', '789-123-4567'),
(5, 'Chris', 'Wilson', 'chris.wilson@email.com', '321-654-9870'),
(6, 'Laura', 'Martinez', 'laura.martinez@email.com', '111-222-3333'),
(7, 'David', 'Anderson', 'david.anderson@email.com', '444-555-6666'),
(8, 'Sarah', 'Taylor', 'sarah.taylor@email.com', '777-888-9999'),
(9, 'James', 'Thomas', 'james.thomas@email.com', '222-333-4444'),
(10, 'Olivia', 'Harris', 'olivia.harris@email.com', '555-666-7777'),
(11, 'Michael', 'Brown', 'michael.brown@email.com', '123-456-7890'),
(12, 'Sophia', 'Wilson', 'sophia.wilson@email.com', '987-654-3210'),
(13, 'Ethan', 'Johnson', 'ethan.johnson@email.com', '456-789-1230'),
(14, 'Emma', 'White', 'emma.white@email.com', '789-123-4560'),
(15, 'Lucas', 'Martinez', 'lucas.martinez@email.com', '321-654-9870');

-- Insert Data into the date_dim Table
INSERT INTO dates (date_id, full_date, year, month, day, day_of_week) VALUES
(1, '2024-03-01', 2024, 3, 1, 'Friday'),
(2, '2024-03-02', 2024, 3, 2, 'Saturday'),
(3, '2024-03-03', 2024, 3, 3, 'Sunday'),
(4, '2024-03-04', 2024, 3, 4, 'Monday'),
(5, '2024-03-05', 2024, 3, 5, 'Tuesday'),
(6, '2024-03-06', 2024, 3, 6, 'Wednesday'),
(7, '2024-03-07', 2024, 3, 7, 'Thursday'),
(8, '2024-03-08', 2024, 3, 8, 'Friday'),
(9, '2024-03-09', 2024, 3, 9, 'Saturday'),
(10, '2024-03-10', 2024, 3, 10, 'Sunday'),
(11, '2024-03-11', 2024, 3, 11, 'Monday'),
(12, '2024-03-12', 2024, 3, 12, 'Tuesday'),
(13, '2024-03-13', 2024, 3, 13, 'Wednesday'),
(14, '2024-03-14', 2024, 3, 14, 'Thursday'),
(15, '2024-03-15', 2024, 3, 15, 'Friday');
--  Insert Data into the products Table
INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 999.99),
(2, 'Smartphone', 'Electronics', 699.99),
(3, 'Tablet', 'Electronics', 399.99),
(4, 'Headphones', 'Accessories', 149.99),
(5, 'Smartwatch', 'Accessories', 249.99),
(6, 'Gaming Console', 'Electronics', 499.99),
(7, 'Wireless Mouse', 'Accessories', 59.99),
(8, 'Mechanical Keyboard', 'Accessories', 129.99),
(9, 'External Hard Drive', 'Storage', 89.99),
(10, 'Bluetooth Speaker', 'Audio', 199.99),
(11, 'Smartphone', 'Electronics', 799.99),
(12, 'Tablet', 'Electronics', 599.99),
(13, 'Noise Cancelling Headphones', 'Audio', 349.99),
(14, 'Smartwatch', 'Wearables', 299.99),
(15, 'Portable Projector', 'Accessories', 499.99);

-- Insert Data into the stores Table
INSERT INTO stores (store_id, store_name, location) VALUES
(1, 'Tech Store NYC', 'New York'),
(2, 'Gadget Hub LA', 'Los Angeles'),
(3, 'Digital World Chicago', 'Chicago'),
(4, 'Smart Shop Houston', 'Houston'),
(5, 'ElectroMart Miami', 'Miami'),
(6, 'Tech Haven Dallas', 'Dallas'),
(7, 'Gadget Zone Seattle', 'Seattle'),
(8, 'Digital Express Boston', 'Boston'),
(9, 'Smart World Phoenix', 'Phoenix'),
(10, 'ElectroMart Denver', 'Denver'),
(11, 'Gadget Galaxy', 'San Diego'),
(12, 'Smart Store', 'Chicago'),
(13, 'Tech Market', 'Austin'),
(14, 'Innovate Hub', 'Miami'),
(15, 'Electro Plaza', 'Portland');

-- Insert Data into the orders Table
INSERT INTO orders (order_id, customer_id, product_id, date_id, store_id, quantity, total_amount) VALUES
(1, 1, 1, 1, 1, 2, 1999.98),
(2, 2, 3, 2, 2, 1, 399.99),
(3, 3, 2, 3, 3, 3, 2099.97),
(4, 4, 5, 4, 4, 1, 249.99),
(5, 5, 4, 5, 5, 2, 299.98),
(6, 6, 6, 6, 6, 1, 499.99),
(7, 7, 7, 7, 7, 2, 119.98),
(8, 8, 8, 8, 8, 3, 389.97),
(9, 9, 9, 9, 9, 1, 89.99),
(10, 10, 10, 10, 10, 2, 399.98),
(11, 1, 2, 5, 3, 1, 699.99),
(12, 2, 4, 3, 5, 4, 599.96),
(13, 3, 5, 1, 8, 2, 499.98),
(14, 4, 3, 4, 2, 2, 799.98),
(15, 5, 1, 2, 7, 1, 999.99),
(16, 11, 11, 11, 11, 1, 799.99),
(17, 12, 12, 12, 12, 1, 599.99),
(18, 13, 13, 13, 13, 2, 699.98),
(19, 14, 14, 14, 14, 1, 299.99),
(20, 15, 15, 15, 15, 2, 999.98),
(21, 6, 11, 6, 7, 1, 799.99),
(22, 7, 12, 7, 8, 3, 1799.97),
(23, 8, 13, 8, 9, 2, 699.98),
(24, 9, 14, 9, 10, 2, 599.98),
(25, 10, 15, 10, 11, 1, 499.99);

