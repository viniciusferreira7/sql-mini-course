DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS work_schedules;

CREATE TABLE IF NOT EXISTS publications (
  id SERIAL CONSTRAINT pik_pub_id PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  created_at DATE NOT NULL,
  language VARCHAR(25)
);

CREATE TABLE books (
  isn13 char(13) UNIQUE,
  cover_type VARCHAR(20),
  edition SMALLINT
) INHERITS(publications);

CREATE TABLE magazines (
  issn CHAR(8),
  number SMALLINT,
  UNIQUE(issn, number)
) INHERITS(publications);


INSERT INTO books (name, created_at, language, isn13, cover_type, edition)
VALUES
  ('O Senhor dos Anéis', '2025-01-01', 'Português', '9788543806572', 'Capa dura', 3),
  ('Clean Code', '2023-09-10', 'Inglês', '9780132350884', 'Brochura', 1),
  ('Dom Quixote', '2022-06-18', 'Espanhol', '9788491050293', 'Capa dura', 2);

INSERT INTO magazines (name, created_at, language, issn, number)
VALUES
  ('National Geographic', '2025-03-01', 'Inglês', '00279358', 314),
  ('Superinteressante', '2025-04-01', 'Português', '01042876', 398),
  ('Scientific American', '2025-02-15', 'Inglês', '00368733', 541);

SELECT * FROM publications;
SELECT * FROM books;
SELECT * FROM magazines;

ALTER TABLE publications
ADD COLUMN total_pages INT;

UPDATE publications
SET total_pages = 567
WHERE id = 1;