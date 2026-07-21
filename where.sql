SELECT * FROM customers WHERE customer_id > 1;

SELECT * FROM customers WHERE address="madipakkam" AND name="ram";

SELECT * FROM customers WHERE address="madipakkam" OR name="ram";

SELECT * FROM customers WHERE NOT (address="madipakkam" OR name="ram");

SELECT * FROM customers WHERE address IN ("madipakkam");

SELECT * FROM customers WHERE address NOT IN ("madipakkam");

SELECT * FROM customers WHERE customer_id BETWEEN 2 AND 4;

SELECT * FROM customers WHERE name LIKE "%a";

SELECT * FROM customers WHERE name LIKE "%a%";

SELECT * FROM customers WHERE name LIKE "a%";

SELECT * FROM customers WHERE name LIKE "_a_";

-- REGEXP Regular expersion

SELECT * FROM customers WHERE name REGEXP "^j"; -- '^' it search only in beginning

SELECT * FROM customers WHERE name REGEXP "n$"; -- '$' it search only in end

SELECT * FROM customers WHERE name REGEXP "^j|^r"; -- '|' it search only in OR logical

SELECT * FROM customers WHERE name REGEXP "j[a]"; -- '[abc]' it search only thing in this box only

SELECT * FROM customers WHERE name REGEXP "j[b-c]"; -- '[a-z]' it search all in with - only

SELECT * FROM customers WHERE name IS NULL;