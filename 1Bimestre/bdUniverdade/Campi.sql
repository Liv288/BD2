CREATE DATABASE bdUniversidade

CREATE TABLE tbCampi(
	codCampi INT PRIMARY KEY IDENTITY(1,1)
	,nomeCampi VARCHAR (30) NOT NULL
	,logradouroCampi VARCHAR(50) NOT NULL
	,numLogradouroCampi	VARCHAR (4) NOT NULL
	,bairroCampi VARCHAR (25) NOT NULL
	,cepCampi CHAR(8) NOT NULL
	,cidadeCampi VARCHAR(50) NOT NULL
	,ufCampi CHAR(2) NOT NULL
	,complementoCampi VARCHAR(100) NOT NULL
)

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY(1,1)
	,nomeCurso VARCHAR(30) NOT NULL
	,codCampi INT FOREIGN KEY REFERENCES tbCampi(codCampi)
	,descCurso VARCHAR(100) NOT NULL
)

CREATE TABLE tbDisciplina(
	codDiscipina INT PRIMARY KEY IDENTITY(1,1)
	,nomeDisciplina VARCHAR(50) NOT NULL
	,descDisciplina VARCHAR(100) NOT NULL
)

CREATE TABLE tbProfessor(
	codProfessor INT PRIMARY KEY IDENTITY(1,1)
	,nomeProfessor VARCHAR(100) NOT NULL
)

CREATE TABLE tbCursoDisciplina(
	codCursoDisciplina INT PRIMARY KEY IDENTITY(1,1)
	,codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	,codDisciplina INT FOREIGN KEY REFERENCES tbDisciplina(codDisciplina)
	,codProfessor INT FOREIGN KEY REFERENCES tbProfessor(codProfessor)
)

CREATE TABLE tbTelProfessor(
	codTelProfessor INT PRIMARY KEY IDENTITY(1,1)
	,numTelProfessor VARCHAR (9) NOT NULL
	,codProfessor INT FOREIGN KEY REFERENCES tbProfessor(codProfessor)
)

CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY(1,1)
	,anoFormacaoTurma VARCHAR(4) NOT NULL
	,numSalaTurma VARCHAR(3) NOT NULL
)

CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY(1,1)
	,codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
	,rgAluno VARCHAR(9) NOT NULL
	,cpfAluno VARCHAR(11) NOT NULL
)

CREATE TABLE tbTelAluno(
	codTelAluno INT PRIMARY KEY IDENTITY(1,1)
	,numTelAluno VARCHAR(9) NOT NULL
	,codAlunoINT FOREIGN KEY REFERENCES tbAluno(codAluno)
)





