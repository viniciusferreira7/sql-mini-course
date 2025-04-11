--  COUNT

SELECT COUNT(*) AS products FROM products;

SELECT * FROM products;

UPDATE products SET description = null WHERE id = 18;

SELECT COUNT(description) AS products FROM products;

SELECT COUNT(DISTINCT name) AS products FROM products;
SELECT COUNT(DISTINCT quantity) AS products FROM products;

SELECT COUNT(*) FROM products
WHERE price >= 10;

-- MAX

SELECT MAX(price) FROM products;
SELECT MAX(quantity) FROM products;
SELECT MAX(name) FROM products;

-- MIN

SELECT MIN(quantity) FROM products;

-- SUM

SELECT SUM(price) AS sum FROM products;
SELECT (SUM(price) / COUNT(*)) AS sum FROM products;

-- AVG

SELECT ROUND(AVG(price), 2) FROM products;
SELECT AVG(quantity) FROM products;

