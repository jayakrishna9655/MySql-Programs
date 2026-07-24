use mysqllearning;

SELECT * FROM customers ORDER BY address;

SELECT * FROM customers ORDER BY address DESC;

SELECT * FROM customers ORDER BY name,address; -- for two name for sort means it take first as a main (name) here soo it only sort by name but if name have dulipate means
											   -- soo it only sort by name but if name have dulipate means it will sort that line as a seconder sort
                                              
SELECT * FROM customers ORDER BY name DESC , address ASC; -- same here Check duplicates, if No duplicates → nothing changes

