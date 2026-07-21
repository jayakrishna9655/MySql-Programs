USE mysqllearning;
-- i need to get name and address and craete new id*1.5;
SELECT * FROM customers;

SELECT name ,address , customer_id,customer_id * 1.5 AS "task" FROM customers;