CREATE DATABASE bdEscola
GO

USE bdEscola

CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY (1,1),
	nomeAluno VARCHAR(100) NOT NULL,
	dataNascimentoAluno SMALLDATETIME NOT NULL,
	rgAluno  VARCHAR(8),
	naturalidadeAluno VARCHAR(100)
)

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY,
	nomeCurso VARCHAR(100) NOT NULL,
	cargahorariaCurso INT,
	valorCurso DECIMAL(8, 2),
)

CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY (1,1),
	nomeTurma VARCHAR(100) NOT NULL,
	codCurso INT FOREIGN KEY REFERENCES tbCurso (codCurso),
	horarioTurma TIME,
)

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY (1,1),
	dataMatricula SMALLDATETIME NOT NULL,
	codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno),
	codTurma INT FOREIGN KEY REFERENCES tbTurma (codTurma),
)