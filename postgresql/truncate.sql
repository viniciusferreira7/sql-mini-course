CREATE TABLE table_to_delete (
  name VARCHAR(100) NOT NULL
);

INSERT INTO table_to_delete (name)
VALUES ('Teste'), ('NOVO');

SELECT * FROM table_to_delete;

TRUNCATE TABLE table_to_delete;

DROP TABLE IF EXISTS table_to_delete;