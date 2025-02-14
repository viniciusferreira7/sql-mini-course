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