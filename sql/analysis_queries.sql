-- E-commerce Sales Analysis | Load data/dataset.csv into a table named sales
SELECT category, SUM(quantity*unit_price) AS revenue, SUM(quantity*(unit_price-unit_cost)) AS profit
FROM sales GROUP BY category ORDER BY revenue DESC;
SELECT region, SUM(quantity*unit_price) AS revenue FROM sales GROUP BY region ORDER BY revenue DESC;
SELECT strftime('%Y-%m', order_date) AS month, SUM(quantity*unit_price) AS revenue
FROM sales GROUP BY month ORDER BY month;