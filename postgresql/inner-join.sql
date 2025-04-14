SELECT * FROM orders;

SELECT c.name AS "Nome do client", p.name AS "Name do produto", ROUND(p.price, 2) AS "Preço do produto", o.quantity AS "Quantidade do pedido", (p.price * o.quantity) AS "Total do pedido"
FROM orders AS o
INNER JOIN clients AS c
  ON o.client_id = c.id
INNER JOIN products AS p
  ON o.product_id = p.id;

SELECT c.name, o.quantity
FROM orders o
  INNER JOIN clients c
    ON o.client_id = c.id
WHERE c.id = 2 AND  o.quantity >= 3;