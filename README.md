# Task-6---Sales-Trend-Analysis-Using-Aggregations

1) Create Database:
        CREATE DATABASE online_sales;
        USE online_sales;
   Creates a new database named Online_Sales and select for its use
   
2) Create Table:
        CREATE TABLE orders (...);
   Creates an order table to store sales information, including order_id, order_date, product_id, and amount.
   
3) Insert Sample Data:
        INSERT INTO orders VALUES (...);
   Inserts sample order records into the orders table for different months, which are used for sales trend analysis.

4)Analyze Monthly Sales:
        SELECT
             EXTRACT(YEAR FROM order_date) AS Year,
             EXTRACT(MONTH FROM order_date) AS Month,
             SUM(amount) AS Total_Revenue,
             COUNT(DISTINCT order_id) AS Order_Volume
        FROM orders
        GROUP BY
             EXTRACT(YEAR FROM order_date),
             EXTRACT(MONTH FROM order_date)
        ORDER BY
             Year,
             Month;
   EXTRACT(YEAR FROM order_date) retrieves the year from the order date.EXTRACT(MONTH FROM order_date) retrieves the month from the order    date. SUM(amount) calculates the total revenue for each month. COUNT(DISTINCT order_id) counts the number of unique orders placed each    month. GROUP BY groups the data by year and month. ORDER BY sorts the results in chronological order.

5) Output:
       The query returns a monthly summary showing:
       Year,Month,Total Revenue (sum of sales amount),Order Volume (number of orders)
   This helps identify monthly sales trends and compare revenue and order activity over time.
