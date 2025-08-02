CREATE DATABASE bdEscolaIdioma
GO
USE bdEscolaIdioma

CREATE TABLE tbAluno (
    codAluno  INT PRIMARY KEY IDENTITY(1,1)
    ,nomeAluno VARCHAR(50)
    ,rgAluno  VARCHAR(15)
	,cpfAluno CHAR (11) 
	,logradouroAluno VARCHAR (30)
    ,numLogradouroAluno VARCHAR(4)
    ,complementoAluno VARCHAR(100) 
    ,cepAluno CHAR(8) 
    ,bairroAluno VARCHAR(30)
    ,cidadeAluno VARCHAR(30) 
	,dataNascAluno SMALLDATETIME NOT NULL
)

CREATE TABLE tbTelAluno(
	codTelAluno INT PRIMARY KEY IDENTITY(1,1)
	,numTelAluno VARCHAR (9) 
	,codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
)

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY(1,1)
	,nomeCurso VARCHAR(30) 
	,valorCurso DECIMAL(8, 2)
)

CREATE TABLE tbNivel(
    codNivel INT PRIMARY KEY IDENTITY(1,1)
    ,descricaoNivel VARCHAR(100)
)

CREATE TABLE tbPeriodo(
    codPeriodo INT PRIMARY KEY IDENTITY(1,1)
    ,descricaoPeriodo VARCHAR(100)
)

CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY(1,1)
	,descTurma VARCHAR(100)
    ,codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
    ,codNivel INT FOREIGN KEY REFERENCES tbNivel(codNivel)
    ,codPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(codPeriodo)
    ,horarioTurma TIME
    ,diaDaSemanaTurma VARCHAR(10)
)

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME NOT NULL
	,codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
	,codTurma INT FOREIGN KEY REFERENCES tbTurma (codTurma)
)
