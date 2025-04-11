SELECT name AS nome FROM products;
SELECT name AS "Nome" FROM products;

SELECT ROUND(SUM(price),2) AS valor_total FROM products;
SELECT ROUND(SUM(price),2) AS "Valor total" FROM products;


SELECT name AS "Name", last_name AS "Sobrenome" FROM clients AS cl;

SELECT product_id AS "Código do produto", 
  quantity AS "Quantidade" 
FROM orders
ORDER BY "Quantidade" DESC
LIMIT 3 OFFSET 2;

SELECT * FROM clients;

SELECT name "Nome", last_name "Sobrenome"
FROM clients;