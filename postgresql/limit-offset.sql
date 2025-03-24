SELECT *
FROM products
ORDER BY price
LIMIT 2 OFFSET 20;

SElECT count(*)
FROM products;

SELECT *
FROM products
ORDER BY name
OFFSET 18;

SELECT *
FROM products
WHERE price >= 6
ORDER BY price DESC
LIMIT 5;