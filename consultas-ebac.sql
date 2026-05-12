-- SQL (SQLite / DBeaver)

DROP TABLE IF EXISTS EBAC;

CREATE TABLE EBAC (
  AlunoId INTEGER PRIMARY KEY AUTOINCREMENT,
  Nome VARCHAR(30),
  Curso VARCHAR(20),
  Nota INTEGER
);

INSERT INTO EBAC (Nome, Curso, Nota)
VALUES
  ('Fábio', 'QA', 5),
  ('José Pedro', 'Dev', 8),
  ('Mariana', 'QA', 9),
  ('Aline', 'QA', 6),
  ('Alice', 'SQL', 7),
  ('João', 'Dev', 5),
  ('Alan', 'QA', 8),
  ('Wesley', 'SQL', 4),
  ('Pedro', 'UX', 3);

-- 1) Todos os dados em ordem alfabética por nome
SELECT * FROM EBAC
ORDER BY Nome ASC;

-- 2) Todos os alunos do curso QA
SELECT * FROM EBAC
WHERE Curso = 'QA';

-- 3) Todos os alunos com nota maior ou igual a 6
SELECT * FROM EBAC
WHERE Nota >= 6;

-- 4) Todos os alunos que têm "Pedro" no nome
SELECT * FROM EBAC
WHERE Nome LIKE '%Pedro%';
