SELECT *
FROM products;

INSERT INTO products (id, name, description, price, quantity)  
VALUES  
  (11, 'Pepsi 350ml', 'Refrigerante Pepsi lata 350ml', 4.79, 45),  
  (12, 'Ruffles Churrasco 140g', 'Salgadinho Ruffles sabor churrasco', 11.49, 28),  
  (13, 'Arroz Camil 5kg', 'Arroz branco tipo 1 marca Camil 5kg', 23.90, 22),  
  (14, 'Feijão Carioca Caldo Bom 1kg', 'Feijão carioca marca Caldo Bom 1kg', 8.99, 38),  
  (15, 'Óleo de Milho Liza 900ml', 'Óleo de milho refinado marca Liza', 8.49, 27),  
  (16, 'Chocolate Nestlé Classic 90g', 'Chocolate Nestlé Classic ao leite 90g', 7.29, 30),  
  (17, 'Detergente Minuano Neutro', 'Detergente líquido neutro marca Minuano', 3.19, 55),  
  (18, 'Papel Higiênico Personal Vip', 'Papel higiênico Personal Vip pacote 12 rolos', 17.99, 18),  
  (19, 'Shampoo Pantene Liso Extremo', 'Shampoo Pantene Liso Extremo brilho intenso', 10.50, 17),  
  (20, 'Cerveja Budweiser 350ml', 'Cerveja Budweiser lata 350ml', 5.99, 48);

  INSERT INTO products (id, name, price, quantity)  
VALUES  
  (21, 'Guaraná Antarctica 2L', 7.49, 40);

SELECT *
FROM products
ORDER BY name;

SELECT *
FROM products
ORDER BY quantity DESC;

SELECT name, price 
FROM products
ORDER BY price, name;

SELECT name, description
FROM products
ORDER BY description DESC;

SELECT name, description
FROM products
ORDER BY description NULLS LAST;

SELECT name, description
FROM products
ORDER BY description NULLS FIRST;

SELECT name, price
FROM products
WHERE price > 10
ORDER BY price DESC;