USE mysqllearning;

SELECT * FROM customers;

SELECT * FROM orders;

SELECT * FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id 