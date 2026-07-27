USE mysqllearning;

SELECT o.order_no, c.name,c.address,sh.name AS "Shop name",sh.dept AS "Shop Dept" FROM customers c
      JOIN orders o on o.customer_id = c.customer_id 
      JOIN mydb.shop sh WHERE sh.name = c.name;
      
SELECT * FROM customers;
SELECT * FROM orders;

SELECT * FROM customers c JOIN orders o ON o.customer_id = c.customer_id AND  o.order_id = c.customer_id;