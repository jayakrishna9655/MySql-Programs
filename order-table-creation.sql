CREATE TABLE orders(
order_id INT PRIMARY KEY,
order_no INT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
order_dec VARCHAR(20)
);

SELECT * FROM orders;

INSERT orders (order_id,order_no,customer_id,order_dec) VALUE (1,101,1,"mobile");
INSERT orders (order_id,order_no,customer_id,order_dec) VALUE (2,102,2,"pen");

SELECT c.name, o.order_no, o.order_dec FROM customers c JOIN orders o ON c.customer_id = o.customer_id;