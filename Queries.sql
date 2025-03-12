use ecommercedb;
-- 1. Total Sales by Store
SELECT s.store_name, SUM(o.total_amount) AS total_sales
FROM orders o
JOIN stores s ON o.store_id = s.store_id
GROUP BY s.store_name
ORDER BY total_sales DESC;

-- 2. Top 5 Best-Selling Products
SELECT p.product_name, SUM(o.quantity) AS total_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;

-- 3. Monthly Sales Trend
SELECT d.year, d.month, SUM(o.total_amount) AS monthly_sales
FROM orders o
JOIN date_dim d ON o.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;

-- 4. Customer with the Highest Spending
SELECT c.first_name, c.last_name, SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 1;

-- 5. Most Popular Product Category
SELECT p.category, SUM(o.quantity) AS total_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sold DESC;

-- 6. Number of Orders per Store
SELECT s.store_name, COUNT(o.order_id) AS total_orders
FROM orders o
JOIN stores s ON o.store_id = s.store_id
GROUP BY s.store_name
ORDER BY total_orders DESC;

--  7. Average Order Value (AOV) per Customer
SELECT c.first_name, c.last_name, AVG(o.total_amount) AS avg_order_value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY avg_order_value DESC;

-- 8. Stores with Lowest Sales
SELECT s.store_name, SUM(o.total_amount) AS total_sales
FROM orders o
JOIN stores s ON o.store_id = s.store_id
GROUP BY s.store_name
ORDER BY total_sales ASC
LIMIT 5;

-- 9. Revenue by Product Category
SELECT p.category, SUM(o.total_amount) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- 10. Average Order Quantity per Store
SELECT s.store_name, AVG(o.quantity) AS avg_order_quantity
FROM orders o
JOIN stores s ON o.store_id = s.store_id
GROUP BY s.store_name
ORDER BY avg_order_quantity DESC;

-- 11. Total Sales by Year
SELECT d.year, SUM(o.total_amount) AS total_sales
FROM orders o
JOIN date_dim d ON o.date_id = d.date_id
GROUP BY d.year
ORDER BY d.year;
	
-- 12. Customers Who Have Placed More Than 3 Orders
SELECT c.customer_id, c.first_name, c.last_name, COUNT(o.order_id) AS total_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id
HAVING total_orders > 3
ORDER BY total_orders DESC;

-- 13. Customers Who Bought the Most Expensive Products
SELECT c.first_name, c.last_name, p.product_name, p.price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
ORDER BY p.price DESC
LIMIT 10;

-- 14. Best Store for Each Product Category
SELECT p.category, s.store_name, SUM(o.total_amount) AS total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
JOIN stores s ON o.store_id = s.store_id
GROUP BY p.category, s.store_name
ORDER BY p.category, total_sales DESC;

-- 15. Store with the Highest Total Sales
SELECT s.store_name, SUM(o.total_amount) AS total_sales
FROM orders o
JOIN stores s ON o.store_id = s.store_id
GROUP BY s.store_name
ORDER BY total_sales DESC
LIMIT 1;