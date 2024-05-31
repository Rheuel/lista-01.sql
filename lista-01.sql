#1
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES  ('As Crônicas de Nárnia', 'C.S. Lewis','1950', 'Fantasia', '978-0064471190','HarperCollins', '768', 'Francês');

#2
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ('Cem Anos de Solidão', 'Gabriel Garcia Marquez', '1967', TRUE, 'Ficção', '978-0241968581', 'Penguin Books', '422', 'Espanhol'),
	   ('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', '1997', TRUE, 'Fantasia', '978-0439708180', 'Bloomsbury', '309', 'Inglês'),
       ('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', '1954', TRUE, 'Fantasia', '978-0618640157', 'HarperCollins', '423', 'Inglês');

#3
UPDATE livros
SET disponivel = FALSE
WHERE ano_publicacao <= 2000;

#4
UPDATE livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

#5
UPDATE livros
SET idioma = 'Inglês'
WHERE editora = 'Penguin Books';

#6
UPDATE livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE ISBN = '978-0439708180';

#7
DELETE FROM livros WHERE categoria = 'Terror';

#8
DELETE FROM livros WHERE idioma = 'Francês' AND ano_publicacao < 1970;

#9
DELETE FROM livros WHERE titulo = 'As Crônicas de Nárnia';

#10
DELETE FROM livros WHERE editora = 'Penguin Books';

#11
SELECT categoria
FROM livros
WHERE quantidade_paginas > '500';

#12
SELECT categoria, COUNT(categoria) quantidade
FROM livros
GROUP BY categoria;

#13
SELECT categoria, COUNT(categoria) quantidade
FROM livros
GROUP BY categoria;

#14
 SELECT categoria, SUM(quantidade_paginas), SUM(quantidade_paginas)/COUNT(quantidade_paginas) FROM livros
 WHERE categoria = 'drama';

#15
SELECT AVG (ano_publicacao)
FROM livros
WHERE disponivel = TRUE;

#16
SELECT * FROM livros WHERE ano_publicacao = (SELECT MAX(ano_publicacao) FROM livros);
SELECT * FROM livros WHERE ano_publicacao = (SELECT MIN(ano_publicacao) FROM livros);

#17
SELECT * 
FROM livros 
ORDER BY ano_publicacao DESC;

#18
SELECT titulo FROM livros WHERE idioma = 'inglês'
UNION
SELECT titulo
FROM livros
WHERE idioma = 'português';

#19
SELECT *
FROM livros
WHERE autor = 'George Orwell';