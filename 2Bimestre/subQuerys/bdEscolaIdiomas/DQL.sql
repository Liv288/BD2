USE bdEscolaIdioma

--a)  Criar uma consulta que retorne o nome e o pre�o dos cursos que custem abaixo do valor m�dio
SELECT nomeCurso AS 'Nome do Curso', valorCurso AS 'Pre�o do Curso' FROM tbCurso
	WHERE valorCurso IN (SELECT MIN(valorCurso) FROM tbCurso)

--b) Criar uma consulta que retorne o nome e o rg do aluno mais novo
SELECT nomeAluno AS 'Nome do Aluno', rgAluno AS	'RG do Aluno' FROM tbAluno
	WHERE dataNascAluno = (SELECT MAX(dataNascAluno) FROM tbAluno)

--c)  Criar uma consulta que retorne o nome do aluno mais velho
SELECT nomeAluno AS 'Nome do Aluno' FROM tbAluno
	WHERE dataNascAluno = (SELECT MIN(dataNascAluno) FROM tbAluno)

--d) Criar uma consulta que retorne o nome e o valor do curso mais caro
SELECT nomeCurso AS 'Nome do Curso', valorCurso AS 'Pre�o do Curso' FROM tbCurso
	WHERE valorCurso = (SELECT MAX(valorCurso) FROM tbCurso)

--e) Criar uma consulta que retorne o nome do aluno e o nome do curso, do aluno que fez a �ltima matr�cula
SELECT nomeAluno AS 'Nome do Aluno', nomeCurso AS 'Nome do Curso' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
				WHERE dataMatricula = (SELECT MAX(dataMatricula) FROM tbMatricula)

--f)  Criar uma consulta que retorne o nome do primeiro aluno a ser matriculado na escola de Idiomas
SELECT nomeAluno AS 'Nome do Aluno' FROM tbAluno
	INNER JOIN tbMatricula
		ON tbAluno.codAluno = tbMatricula.codAluno
			WHERE dataMatricula = (SELECT MIN(dataMatricula) FROM tbMatricula)

--g) Criar uma consulta que retorne o nome, rg e data de nascimento de todos os alunos que estejam matriculados no curso de ingl�s
SELECT DISTINCT nomeAluno AS 'Nome do Aluno', rgAluno AS 'RG do Aluno', dataNascAluno AS 'Data de Nascimento' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
				WHERE nomeCurso IN (SELECT nomeCurso FROM tbCurso
										WHERE nomeCurso LIKE 'Inglês')
