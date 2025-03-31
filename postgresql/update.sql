SElECT *
FROM products
WHERE description IS NULL;

UPDATE products
SET description = 'updated description'
WHERE description IS NULL

SELECT * 
FROM products
WHERE description = 'updated description';

SElECT *
FROM products
WHERE price >= 15;

UPDATE products
SET quantity = quantity + 10
WHERE price >= 15;

SELECT *
FROM products;

UPDATE products
SET price = price * 1.1;

