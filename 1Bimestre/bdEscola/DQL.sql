USE bdEscola

SELECT nomeAluno AS 'Nome do Aluno', rgAluno AS 'RG', dataNascimentoAluno AS 'Data de Nascimento' FROM tbAluno

SELECT nomeAluno AS 'Nome do Aluno', rgAluno AS 'RG' FROM tbAluno
	WHERE nomeAluno LIKE 'P%'

SELECT nomeCurso AS 'Nome do Curso' FROM tbCurso
	WHERE cargahorariaCurso > 2000

SELECT nomeAluno AS 'Nome do Aluno', rgAluno AS 'RG' FROM tbAluno
	WHERE nomeAluno LIKE '%Silva%'

SELECT nomeAluno AS 'Nome do Aluno', dataNascimentoAluno AS 'Data de Nascimento' FROM tbAluno
	WHERE DATEPART(MONTH, dataNascimentoAluno) = 03

SELECT codAluno AS 'C�digo do Aluno', dataMatricula AS 'Data da Matr�cula' FROM tbMatricula
	WHERE DATEPART(MONTH, dataMatricula) = 05

SELECT codAluno AS 'C�digo do Aluno' FROM tbMatricula
	WHERE codTurma IN(
		SELECT codCurso FROM tbTurma
			WHERE codCurso IN (1, 2)
	)

--Conferir

SELECT codAluno AS 'C�digo do Aluno' FROM tbMatricula
	WHERE codTurma =(
		SELECT codTurma FROM tbTurma 
			WHERE nomeTurma LIKE '1AA'
	)

--Conferir

SELECT codAluno AS 'C�digo do Aluno',  
       nomeAluno AS 'Nome do Aluno',  
	   dataNascimentoAluno AS 'Data de Nascimento',  
	   rgAluno AS 'RG',  
	   naturalidadeAluno AS 'Naturalidade do Aluno'
FROM tbAluno

SELECT codTurma AS 'C�digo da Turma',  
       nomeTurma AS 'Nome da Turma',  
       codCurso AS 'C�digo do Curso',  
       horarioTurma AS 'Hor�rio'  
FROM tbTurma