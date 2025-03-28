SELECT name, price, quantity
FROM products;

SELECT name, price
FROM products
WHERE price BETWEEN 6 AND 10
ORDER BY price DESC
LIMIT 5 OFFSET 2;


SELECT name, price
FROM products
WHERE price BETWEEN 6 AND 8 OR price BETWEEN 20 AND 25
ORDER BY price DESC;

SELECT name, price, quantity
FROM products
WHERE price BETWEEN 5 AND 30 AND quantity <= 20
ORDER BY quantity;

SELECT name, price, quantity
FROM products
WHERE price NOT BETWEEN 5 AND 30
ORDER BY quantity;