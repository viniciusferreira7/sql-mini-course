DROP TABLE IF EXISTS users;

DROP TABLE IF EXISTS orders;

DROP TABLE IF EXISTS products;

CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    nationality VARCHAR(100)
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    publication_year INT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors (id)
);

INSERT INTO
    authors (
        first_name,
        last_name,
        birth_date,
        nationality
    )
VALUES (
        'George',
        'Orwell',
        '1903-06-25',
        'British'
    ),
    (
        'Jane',
        'Austen',
        '1775-12-16',
        'British'
    ),
    (
        'Mark',
        'Twain',
        '1835-11-30',
        'American'
    ),
    (
        'J.K.',
        'Rowling',
        '1965-07-31',
        'British'
    ),
    (
        'Ernest',
        'Hemingway',
        '1899-07-21',
        'American'
    ),
    (
        'Gabriel',
        'García Márquez',
        '1927-03-06',
        'Colombian'
    );

INSERT INTO
    books (
        title,
        genre,
        publication_year,
        author_id
    )
VALUES ('1984', 'Dystopian', 1949, 1),
    (
        'Animal Farm',
        'Political satire',
        1945,
        1
    ),
    (
        'Homage to Catalonia',
        'Memoir',
        1938,
        1
    ),
    (
        'Coming Up for Air',
        'Fiction',
        1939,
        1
    ),
    (
        'Pride and Prejudice',
        'Romance',
        1813,
        2
    ),
    (
        'Sense and Sensibility',
        'Romance',
        1811,
        2
    ),
    ('Emma', 'Romance', 1815, 2),
    (
        'Mansfield Park',
        'Romance',
        1814,
        2
    ),
    (
        'The Adventures of Tom Sawyer',
        'Adventure',
        1876,
        3
    ),
    (
        'Adventures of Huckleberry Finn',
        'Adventure',
        1884,
        3
    ),
    (
        'A Connecticut Yankee in King Arthur''s Court',
        'Science Fiction',
        1889,
        3
    ),
    (
        'The Prince and the Pauper',
        'Historical Fiction',
        1881,
        3
    ),
    (
        'Harry Potter and the Philosopher''s Stone',
        'Fantasy',
        1997,
        4
    ),
    (
        'Harry Potter and the Chamber of Secrets',
        'Fantasy',
        1998,
        4
    ),
    (
        'Harry Potter and the Prisoner of Azkaban',
        'Fantasy',
        1999,
        4
    ),
    (
        'Harry Potter and the Goblet of Fire',
        'Fantasy',
        2000,
        4
    ),
    (
        'The Old Man and the Sea',
        'Fiction',
        1952,
        5
    ),
    (
        'A Farewell to Arms',
        'War novel',
        1929,
        5
    ),
    (
        'For Whom the Bell Tolls',
        'War novel',
        1940,
        5
    ),
    (
        'The Sun Also Rises',
        'Fiction',
        1926,
        5
    ),
    (
        'One Hundred Years of Solitude',
        'Magic realism',
        1967,
        6
    ),
    (
        'Love in the Time of Cholera',
        'Romance',
        1985,
        6
    ),
    (
        'Chronicle of a Death Foretold',
        'Crime fiction',
        1981,
        6
    ),
    (
        'The Autumn of the Patriarch',
        'Political fiction',
        1975,
        6
    );

TRUNCATE TABLE books RESTART IDENTITY CASCADE;

TRUNCATE TABLE authors RESTART IDENTITY CASCADE;

SELECT ( first_name || ' ' || last_name ) AS "Name" FROM authors;

SELECT CONCAT(
        a.first_name, ' ', a.last_name, ', ', b.title
    ) AS "Author and book"
FROM authors a
    INNER JOIN books b ON a.id = b.author_id
ORDER BY b.publication_year DESC;

SELECT bit_length(first_name), char_length(first_name), length(first_name), lower(first_name), upper(first_name)
FROM authors;