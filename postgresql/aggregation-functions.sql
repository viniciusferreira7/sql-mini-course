--  COUNT

SELECT COUNT(*) AS products FROM products;

SELECT * FROM products;

UPDATE products SET description = null WHERE id = 18;

SELECT COUNT(description) AS products FROM products;

SELECT COUNT(DISTINCT name) AS products FROM products;
SELECT COUNT(DISTINCT quantity) AS products FROM products;

SELECT COUNT(*) FROM products
WHERE price >= 10;