# Sales Trend Analysis Using MySQL

This project performs a monthly sales trend analysis using SQL aggregation functions on an e-commerce dataset.

# Objective:

Analyze **monthly revenue** and **order volume** 

# Tools:

- MySQL Workbench, SQL

# Dataset:

The dataset used is `online_sales`, which includes the following fields:

- `order_id` (INT): Unique identifier for each order
  
- `order_date` (DATE): The date when the order was placed

- `amount` (DECIMAL): Revenue generated from the order

- `product_id` (VARCHAR): Identifier of the product

# Hints

- Use EXTRACT(MONTH FROM order_date) for extracting the month.

- Use GROUP BY YEAR(order_date), MONTH(order_date) to group by year and month.

- Use SUM(amount) for calculating the revenue for each month.

- Use COUNT(DISTINCT order_id) for calculating the order volume for each month.

- Use ORDER BY to sort the results chronologically.

- Use LIMIT to restrict results for a specific time period (e.g., first 3 months or a specific range of months).

# Outcome
Learn how to group data and analyze time trends.
