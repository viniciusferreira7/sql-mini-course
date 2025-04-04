INSERT INTO products (id, name, price, quantity)  
VALUES  
  (22, 'Macarrão Instantâneo 85g', 2.79, 50),  
  (23, 'Café Pilão 500g', 14.99, 25),  
  (24, 'Leite Integral Italac 1L', 5.79, 35);

SELECT *
FROM products
WHERE id >= 22
ORDER BY id DESC;

DELETE FROM products
WHERE id = 24;
