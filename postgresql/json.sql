DROP TABLE IF EXISTS books;

DROP TABLE IF EXISTS magazines;

DROP TABLE IF EXISTS publications;

CREATE TABLE orders (
    id SERIAL NOT NULL PRIMARY KEY,
    order_data JSON NOT NULL
);

INSERT INTO
    orders (order_data)
VALUES (
        '{
  "buyer": "John", 
  "products": {
    "drink": "Water",
    "food": "Pizza"
  }
}'
    )

SELECT * FROM orders;

SELECT order_data -> 'buyer' AS "Comprador" FROM orders;

SELECT order_data ->> 'buyer' AS "Comprador" FROM orders;

SELECT order_data -> 'products' ->> 'drink' AS "Bebida" FROM orders;

SELECT order_data ->> 'buyer' AS "Produtos"
FROM orders
WHERE
    order_data -> 'products' ->> 'drink' = 'Water';

SELECT json_each(order_data) FROM orders;

SELECT json_each_text(order_data) FROM orders;

SELECT json_object_keys(order_data -> 'products') FROM orders;