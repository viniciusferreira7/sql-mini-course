-- Comments stay here

-- CREATE TABLE

CREATE TABLE brands (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  website VARCHAR(100),
  phone VARCHAR(15)
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(100) NOT NULL, 
  price REAL,
  amount INTEGER DEFAULT 0
);

----------------------------------->

-- ALTER TABLE and ALTER COLUMN

ALTER TABLE products ADD COLUMN brand_id SERIAL NOT NULL;

ALTER TABLE products ALTER COLUMN name SET DATA TYPE VARCHAR(120);

ALTER TABLE brands ALTER COLUMN name SET DATA TYPE VARCHAR(140);
ALTER TABLE brands ALTER COLUMN name SET NOT NULL;
ALTER TABLE brands ADD CONSTRAINT unique_brand_name UNIQUE (name);

ALTER TABLE products ADD CONSTRAINT brand_id FOREIGN KEY (brand_id) REFERENCES brands (id);

---------------------------------->

-- DROP TABLE

CREATE TABLE controls (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NOW()
);

DROP TABLE IF EXISTS controls

------------------------------------>

CREATE INDEX idx_products_name
ON products (name);

------------------------------------->

-- INSERT

INSERT INTO brands (name, website, phone) 
VALUES
  ('Adidas', 'https://adidas.com', '1188888-8888'),
  ('Puma', 'https://puma.com', '1177777-7777'),
  ('Reebok', 'https://reebok.com', '1166666-6666'),
  ('New Balance', 'https://newbalance.com', '1155555-5555'),
  ('Asics', 'https://asics.com', '1144444-4444'),
  ('Under Armour', 'https://underarmour.com', '1133333-3333'),
  ('Fila', 'https://fila.com', '1122222-2222'),
  ('Converse', 'https://converse.com', '1111111-1111'),
  ('Vans', 'https://vans.com', '1100000-0000');

INSERT INTO products (name, price, amount, brand_id) 
VALUES
  ('Ultraboost Shoes', 199.99, 50, 1), 
  ('Puma RS-X', 149.99, 40, 2),        
  ('Reebok Nano X3', 129.99, 30, 3),   
  ('New Balance 574', 99.99, 20, 4),   
  ('Asics Gel-Kayano', 179.99, 25, 5), 
  ('UA HOVR Phantom', 159.99, 35, 6),  
  ('Fila Disruptor', 89.99, 15, 7),    
  ('Converse Chuck Taylor', 79.99, 60, 8),
  ('Vans Old Skool', 74.99, 45, 9); 

----------------------------------------->

-- SELECT

SELECT * FROM brands;

SELECT id, price, name FROM products WHERE id > 5;

------------------------------------------->

-- INSERT with SELECT

CREATE TABLE apple_products (
  name VARCHAR(120) NOT NULL UNIQUE,
  amount INTEGER DEFAULT 0
);

INSERT INTO brands (name, website, phone) 
VALUES
  ('Adidas', 'https://apple.com', '1188888-8888');

DROP TABLE IF EXISTS app_products;

INSERT INTO brands (name, website, phone)
VALUES 
  ('Apple', 'https://apple.com', '1156828-9858')

SELECT * FROM brands;

INSERT INTO products (name, price, amount, brand_id)
VALUES 
  ('iPhone 15 Pro', 999.99, 30, 10),
  ('MacBook Air M2', 1199.99, 20, 10),
  ('iPad Pro 12.9"', 1099.99, 25, 10),
  ('Apple Watch Ultra 2', 799.99, 15, 10),
  ('AirPods Pro 2', 249.99, 50, 10),
  ('Apple Vision Pro', 3499.99, 10, 10),
  ('Magic Keyboard', 149.99, 40, 10),
  ('Apple Pencil 2', 129.99, 35, 10),
  ('HomePod Mini', 99.99, 45, 10);

SELECT * FROM products;

INSERT INTO  apple_products 
SELECT name, amount FROM products WHERE brand_id = 10;

SELECT * FROM apple_products;
