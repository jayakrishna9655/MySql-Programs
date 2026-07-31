-- use mysqllearning;

CREATE TABLE orderStatus(
orderstatus_id int PRIMARY KEY,
status VARCHAR(10)
);

SELECT * FROM orderStatus;
SELECT * FROM orders;
INSERT orderStatus(orderstatus_id,status) VALUE(1,"Draft");
INSERT orderStatus(orderstatus_id,status) VALUE(2,"Ordered");
INSERT orderStatus(orderstatus_id,status) VALUE(3,"Fulfilled");

ALTER TABLE orders ADD(
orderstatus_id int
);

ALTER TABLE orders ADD(FOREIGN KEY (orderstatus_id) REFERENCES orderStatus(orderstatus_id));

UPDATE orders SET orderstatus_id =1 WHERE order_id=1;
UPDATE orders SET orderstatus_id =2 WHERE order_id=2;

INSERT orders (order_id,order_no,customer_id,order_dec,orderstatus_id) VALUE (3,103,3,"paper",3);
INSERT orders (order_id,order_no,customer_id,order_dec,orderstatus_id) VALUE (4,104,4,"laptop",2);
