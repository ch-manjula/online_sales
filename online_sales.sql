-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS sales_analysis;

-- Step 2: Use the new database
USE sales_analysis;

-- Step 3: Create the online_sales table
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id VARCHAR(10)
);

-- Step 4: Insert sample data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1001, '2023-01-05', 250.00, 'P001'),
(1002, '2023-01-12', 499.99, 'P002'),
(1003, '2023-01-20', 150.50, 'P003'),
(1004, '2023-02-03', 349.00, 'P001'),
(1005, '2023-02-14', 129.99, 'P004'),
(1006, '2023-03-01', 499.99, 'P005'),
(1007, '2023-03-15', 299.50, 'P002'),
(1008, '2023-03-28', 199.99, 'P006'),
(1009, '2023-04-10', 650.00, 'P001'),
(1010, '2023-04-21', 300.00, 'P007'),
(1011, '2023-05-05', 750.00, 'P008'),
(1012, '2023-05-18', 120.00, 'P004'),
(1013, '2023-06-01', 450.00, 'P009'),
(1014, '2023-06-10', 330.00, 'P002'),
(1015, '2023-06-25', 290.00, 'P001');


select * from online_sales;

-- Sales Trend Analysis: Monthly Revenue and Order Volume
-- Sales Trend Analysis: Monthly Revenue and Order Volume

SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    online_sales
GROUP BY
    YEAR(order_date), MONTH(order_date)
ORDER BY
    order_year, order_month;




-- Sales Trend Analysis: Monthly Revenue and Order Volume (Limited Results)

SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    online_sales
WHERE
    order_date >= '2023-01-01' AND order_date <= '2023-06-30'
GROUP BY
    YEAR(order_date), MONTH(order_date)
ORDER BY
    order_year, order_month
LIMIT 3;

