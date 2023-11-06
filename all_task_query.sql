/*Task 1 Query Start*/
SELECT a.name, COUNT(a.name) Total_Order, SUM(b.total) Toatl_Amount 
FROM customers a INNER JOIN orders b
ON a.id = b.customer_id
GROUP BY a.name 
ORDER BY Total_Order DESC;
/*Task 1 Query End*/

/*Task 2 Query Start*/
SELECT c.name, a.quantity, a.unit_price, (a.quantity * a.unit_price) Total_Amount
FROM 
order_items a INNER JOIN orders b
ON a.order_id = b.id
INNER JOIN products c
ON a.product_id = c.id
ORDER BY  a.order_id;
/*Task 2 Query End*/

/*Task 3 Query Start*/
SELECT a.name, SUM(b.price) Total_Revenue
FROM categories a 
INNER JOIN products b
ON a.id = b.category_id
GROUP BY a.name
ORDER BY Total_Revenue DESC;
/*Task 3 Query End*/

/*Task 4 Query Start*/
SELECT a.name, SUM(b.total) Total_Purches  
FROM customers a
INNER JOIN orders b
ON a.id = b.customer_id
GROUP BY a.name
ORDER BY Total_Purches DESC 
LIMIT 5;
/*Task 4 Query End*/