CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users (id),
    product_id INTEGER REFERENCES products (id),
    quantity INTEGER,
    order_date DATE
);

INSERT INTO
    users (name, email)
VALUES (
        'Alice Johnson',
        'alice@example.com'
    ),
    (
        'Bob Smith',
        'bob@example.com'
    ),
    (
        'Charlie Lee',
        'charlie@example.com'
    );

INSERT INTO
    products (name, price)
VALUES ('Laptop', 1200.00),
    ('Headphones', 150.00),
    ('Keyboard', 80.00),
    ('Monitor', 300.00);

INSERT INTO
    orders (
        user_id,
        product_id,
        quantity,
        order_date
    )
VALUES (1, 1, 1, '2024-01-10'),
    (1, 2, 2, '2024-01-12'),
    (2, 3, 1, '2024-02-15'),
    (3, 1, 1, '2024-03-01'),
    (2, 4, 2, '2024-03-05'),
    (1, 3, 1, '2024-04-01');

SELECT * from products;

SELECT name, price
FROM products
WHERE
    price < (
        SELECT MAX(price)
        FROM products
    )
ORDER BY price DESC
LIMIT 2
OFFSET
    1;

SELECT quantity
FROM orders
WHERE
    product_id = (
        SELECT id
        FROM products
        WHERE
            name = 'Keyboard'
    );

SELECT * from orders;