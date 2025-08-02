USE bdComercioLivros


/* a) Criar uma consulta em que seja poss�vel identificar todo autores pelo nome, inclusive 
aqueles autores que ainda n�o tiveram livros cadastrados */
SELECT nomeAutor AS 'Nome do Autor', nomeLivro AS 'Nome do Livro' FROM tbAutor
	LEFT JOIN tbLivro
		ON tbAutor.codAutor = tbLivro.codAutor


/* b) Criar uma consulta em que seja poss�vel identificar todas as editoras pelo nome, inclusive 
aquelas que ainda n�o publicaram livros */
SELECT nomeEditora AS 'Nome da Editora', nomeLivro AS 'Nome do Livro' FROM tbEditora
	RIGHT JOIN tbLivro
		ON tbEditora.codEditora = tbLivro.codLivro


/* c) Criar uma consulta em que seja poss�vel identificar todos os livros pelo nome, inclusive 
aqueles que n�o tem autor cadastrado */
SELECT nomeLivro AS 'Nome do Livro', nomeAutor AS 'Nome do Autor' FROM tbLivro
	LEFT JOIN tbAutor
		ON tbLivro.codLivro = tbAutor.codAutor


/* d) Criar uma consulta em que seja poss�vel mostrar todos os livros pelo nome, inclusive 
aqueles que ainda n�o foram publicados por nenhuma editora */
SELECT nomeLivro AS 'Nome do Livro', nomeEditora AS 'Nome da Editora' FROM tbLivro
	LEFT JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora 


/* e) Criar uma consulta que exiba todos os nomes de livros ao lado dos nomes das editoras, 
inclusive as editoras que ainda n�o fizeram nenhuma publica��o e aqueles livros publicados 
ainda n�o possuem nenhuma editora relacionada */
SELECT nomeLivro AS 'Nome do Livro', nomeEditora AS 'Nome da Editora' FROM tbLivro
	FULL JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora



/* f) A Cia das Letras quer publicar TODOS os livros cadastrados. Criar uma consulta que 
apresenta o nome do livro ao lado do nome da editora Cia das Letras */
SELECT nomeLivro AS 'Nome do Livro', nomeEditora AS 'Nome da Editora' FROM tbLivro
	CROSS JOIN tbEditora
			WHERE nomeEditora LIKE 'Cia das Letras'



/* g) Caso todas as editoras queiram publicar todos os livros, criar uma consulta para relacionar 
todas as editoras com todos os livros */
SELECT nomeEditora AS 'Nome da Editora', nomeLivro AS 'Nome do Livro' FROM tbEditora
	CROSS JOIN tbLivro


--h) Criar uma consulta que apresente apenas os livros que n�o tem autor cadastrado
SELECT nomeLivro AS 'Nome do Livro', nomeAutor AS 'Nome do Autor' FROM tbLivro
	LEFT JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
			WHERE tbLivro.codAutor IS NULL 

/* i) Criar uma consulta que apresente os nomes das editoras que ainda n�o tem um livro 
publicado */
SELECT nomeEditora 'Nome da Editora', nomeLivro AS 'Nome do Livro' FROM tbEditora
	LEFT JOIN tbLivro
		ON tbEditora.codEditora = tbLivro.codEditora
			WHERE nomeLivro IS NULL


/*j) Criar uma consulta que apresente apenas os nomes dos autores que ainda n�o escreveram 
nenhum livro*/
SELECT nomeAutor AS 'Nome do Autor', nomeLivro AS 'Nome do Livro' FROM tbAutor
	LEFT JOIN tbLivro
		ON tbAutor.codAutor = tbLivro.codAutor
			WHERE nomeLivro IS NULL

