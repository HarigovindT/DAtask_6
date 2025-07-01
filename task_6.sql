CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 120.50, 101),
(2, '2023-01-20', 200.00, 102),
(3, '2023-02-05', 150.25, 103),
(4, '2023-02-15', 135.00, 101),
(5, '2023-03-10', 180.75, 104),
(6, '2023-03-22', 210.00, 105),
(7, '2023-04-01', 175.50, 106),
(8, '2023-04-18', 145.25, 107),
(9, '2023-05-05', 160.00, 108),
(10, '2023-05-25', 190.00, 109);

SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    orders
GROUP BY
    year, month
ORDER BY
    year, month;
