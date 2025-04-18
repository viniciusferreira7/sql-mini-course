DROP VIEW IF EXISTS sales;

CREATE OR REPLACE VIEW sales AS
  SELECT c.name AS "Cliente", p.name AS "Produto", ROUND(p.price, 2) AS "Preço do produto", o.quantity AS "Quantidade do pedido", (p.price * o.quantity) AS "Fatura"
  FROM orders AS o
  INNER JOIN clients AS c
    ON o.client_id = c.id
  INNER JOIN products AS p
    ON o.product_id = p.id;

SELECT * FROM sales;

SELECT "Cliente", "Produto" FROM sales;

SELECT "Cliente", ROUND(SUM("Fatura"), 2) AS "Total por cliente"
FROM sales
GROUP BY "Cliente"

ALTER VIEW sales RENAME TO invoices;

DROP VIEW IF EXISTS invoices CASCADE;