DROP TABLE IF EXISTS brands, clients, order_itens, orders, products;

CREATE TABLE clients (
  id INT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  last_name VARCHAR(40) NOT NULL
);

CREATE TABLE products (
  id INT PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  description TEXT NULL,
  price NUMERIC CHECK(price > 0) NOT NULL,
  quantity SMALLINT DEFAULT 0 
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  client_id INT NOT NULL REFERENCES clients(id),
  product_id INT NOT NULL,
  quantity SMALLINT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES products(id)
);
