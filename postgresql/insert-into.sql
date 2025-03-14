INSERT INTO clients (id, name, last_name)
VALUES (1, 'John', 'Doe');

INSERT INTO clients (id, name, last_name)
VALUES (2, 'Jana', 'Doe');

SELECT * FROM clients;

INSERT INTO products (id, name, description, price, quantity)  
VALUES  
  (1, 'Coca-Cola 350ml', 'Refrigerante Coca-Cola lata 350ml', 4.99, 50),  
  (2, 'Doritos Queijo Nacho 140g', 'Salgadinho Doritos sabor queijo nacho', 10.99, 30),  
  (3, 'Arroz Tio João 5kg', 'Arroz branco tipo 1 marca Tio João', 24.90, 20),  
  (4, 'Feijão Preto Kicaldo 1kg', 'Feijão preto da marca Kicaldo 1kg', 8.50, 40),  
  (5, 'Óleo de Soja Soya 900ml', 'Óleo de soja refinado da marca Soya', 7.99, 25),  
  (6, 'Chocolate Lacta 90g', 'Chocolate Lacta Diamante Negro 90g', 6.99, 35),  
  (7, 'Detergente Ypê Neutro', 'Detergente líquido neutro da marca Ypê', 2.99, 60),  
  (8, 'Papel Higiênico Neve', 'Papel higiênico Neve pacote com 12 rolos', 18.90, 15),  
  (9, 'Shampoo Seda Ceramidas', 'Shampoo Seda Ceramidas brilho e maciez', 9.50, 20),  
  (10, 'Cerveja Heineken 330ml', 'Cerveja Heineken Long Neck garrafa 330ml', 6.49, 50);

  SELECT * FROM products;

INSERT INTO orders (client_id, product_id, quantity)  
VALUES  
  (1, 1, 2),
  (1, 3, 1),
  (2, 2, 3),
  (2, 5, 2),
  (2, 10, 6);

SELECT * FROM orders;

