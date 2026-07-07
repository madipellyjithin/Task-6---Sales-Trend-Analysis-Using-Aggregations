CREATE DATABASE online_sales;
USE online_sales;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    product_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO orders VALUES
(101,'2024-01-05',1,250.00),
(102,'2024-01-10',2,180.00),
(103,'2024-01-15',3,320.00),
(104,'2024-02-03',1,450.00),
(105,'2024-02-12',2,275.00),
(106,'2024-02-25',4,150.00),
(107,'2024-03-06',2,500.00),
(108,'2024-03-18',3,220.00),
(109,'2024-03-28',5,300.00),
(110,'2024-04-05',1,600.00),
(111,'2024-04-14',2,350.00),
(112,'2024-04-20',3,200.00),
(113,'2024-05-02',4,700.00),
(114,'2024-05-10',5,450.00),
(115,'2024-05-22',1,500.00),
(116,'2024-06-08',2,650.00),
(117,'2024-06-17',3,300.00),
(118,'2024-06-29',4,400.00);

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