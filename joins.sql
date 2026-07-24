SELECT * FROM customers;

SELECT * FROM orders;

SELECT * FROM orders o JOIN customers c WHERE c.customer_id = o.customer_id;

SELECT o.order_no ,o.customer_id, o.order_dec , c.customer_id,c.name FROM orders o JOIN customers c ON c.customer_id = o.customer_id;

USE mydb;
SELECT * FROM shop;

SELECT * FROM shop JOIN mysqllearning.customers WHERE customers.name = shop.name;

