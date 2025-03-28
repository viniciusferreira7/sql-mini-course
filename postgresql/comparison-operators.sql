SELECT name, price
FROM products
WHERE price > 12;

SELECT name, quantity
FROM products
WHERE quantity <= 20 AND quantity > 10; 

SELECT *
FROM products;

SELECT name, quantity
FROM products
WHERE name != 'Coca-Cola 350ml';

SELECT name, quantity
FROM products
WHERE name <> 'Doritos Queijo Nacho 140g';