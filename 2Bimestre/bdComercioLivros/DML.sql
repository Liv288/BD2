USE bdComercioLivros

INSERT INTO tbAutor (codAutor, nomeAutor) 
	VALUES
		 (1, 'Machado de Assis'),
		 (2, 'José de Alencar'),
		 (3, 'Erico Verissimo'),
		 (4, 'José Augusto N. G. Manzano'),
		 (5, 'Sergio Furgeri')

SELECT * FROM tbAutor

INSERT INTO tbEditora (codEditora, nomeEditora) 
	VALUES
		 (1, 'Cia das Letras'),
		 (2, 'Saraiva'),
		 (3, 'Erica'),
		 (4, 'Scipione')

SELECT * FROM tbEditora


INSERT INTO tbLivro (codLivro, nomeLivro, isbnLivro, numPaginasLivro, codAutor, codEditora) 
	VALUES
		(1, 'Java 7', '1223232', 322, 4, 4),
		(2, 'PHP – Guia Pratico', '7262722', 423, 4, 4),
		(3, 'Dom Casmurro', '1313223', 212, 1, 1),
		(4, 'O alienista', '2323222', 300, 1, NULL),
		(5, 'Olhai os lírios do campo', '2232112', 321, 3, NULL),
		(6, 'Programação de computadores com Java', '3434343', 211, 4, NULL),
		(7, 'Programação WEB com plataforma JAVA', '2323232', 341, NULL, 4)

SELECT * FROM tbLivro

--DELETE FROM tbLivro	
--DBCC CHECKIDENT ('tbLivro', RESEED, 0);

