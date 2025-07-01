# 📊 Sales Trend Analysis Using SQL

This project performs sales trend analysis on a sample e-commerce dataset using SQL aggregations. It calculates monthly revenue and order volume using SQL queries compatible with **Oracle** (and can be adapted to **MySQL/PostgreSQL**).

---

## 📂 Dataset Overview

We use a single table called `orders` with the following columns:

| Column       | Type         | Description               |
|--------------|--------------|---------------------------|
| `order_id`   | INT          | Unique ID for each order  |
| `order_date` | DATE         | Date when the order was placed |
| `amount`     | DECIMAL(10,2)| Amount of the order       |
| `product_id` | INT          | Associated product ID     |

Sample records span from January to May 2023.

---

## 📌 Objective

Analyze the **monthly sales revenue** and **number of orders** to identify trends using:

- `SUM(amount)` for total revenue
- `COUNT(DISTINCT order_id)` for order volume
- `EXTRACT(YEAR FROM order_date)` and `EXTRACT(MONTH FROM order_date)` for time-based grouping

---

## 🧠 SQL Query

```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    orders
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date);
