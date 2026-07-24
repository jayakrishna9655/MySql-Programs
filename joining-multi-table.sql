USE mysqllearning;

SELECT o.order_no, c.name,c.address,sh.name AS "Shop name",sh.dept AS "Shop Dept" FROM customers c
      JOIN orders o on o.customer_id = c.customer_id 
      JOIN mydb.shop sh WHERE sh.name = c.name;