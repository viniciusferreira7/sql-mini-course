SELECT * 
FROM clients
WHERE id = 2;

SELECT name, quantity
FROM products
WHERE quantity < 35;

SELECT name, price
FROM products
WHERE price >= 10.00;

SELECT product_id, quantity
FROM orders
WHERE client_id = 1;