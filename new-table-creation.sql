CREATE database mySqlLearning;
USE mySqlLearning;

CREATE TABLE customers(
customer_id int,
name VARChAR(20),
address VARCHAR(30)
);


INSERT customers(customer_id,name,address) value(1,"jai","ram nagar");
INSERT customers(customer_id,name,address) VALUE(2,"krish","chennai");
INSERT customers(customer_id,name,address) VALUE(3,"ram","madipakkam");
INSERT customers(customer_id,name,address) VALUE(4,"arun","madipakkam");

DELETE FROM customers WHERE customer_id=3;

DELETE FROM customers
WHERE customer_id = 3
LIMIT 1;

ALTER TABLE customers ADD PRIMARY KEY (customer_id);

SELECT * FROM customers;

SELECT name,address FROM customers;
SELECT customer_id,address FROM customers;
SELECT name,address,address + " jai"+10 AS "Jai data" FROM customers;
SELECT DISTINCT address FROM customers; -- the DISTINCT remove the duplicate

INSERT customers (customer_id,name,address) VALUE (5,null,"chennai");






