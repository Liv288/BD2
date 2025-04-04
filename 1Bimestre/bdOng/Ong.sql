CREATE  DATABASE bdOng

CREATE TABLE tbSexo(
	codSexo INT PRIMARY KEY IDENTITY(1,1)
	,descricaoSexo VARCHAR (20) NOT NULL
)

CREATE TABLE tbStatus(
	codStatus  INT PRIMARY KEY IDENTITY(1,1)
	,descricaoStatus VARCHAR (20) NOT NULL
)

CREATE TABLE tbGenitor(
	codGenitor  INT PRIMARY KEY IDENTITY(1,1)
	,nomeGenitor VARCHAR(50) NOT NULL
	,cpfGenitor CHAR(11) NOT NULL
)

CREATE TABLE tbCrianca(
	codCrianca  INT PRIMARY KEY IDENTITY(1,1)
	,nomeCrianca VARCHAR(50) NOT NULL
	,dtNascimentoCrianca SMALLDATETIME NOT NULL
	,codSexo INT FOREIGN KEY REFERENCES tbSexo(codSexo)
	,codStatus INT FOREIGN KEY REFERENCES tbStatus(codStatus)
)

CREATE TABLE tbFiliacao(
	codFiliacao INT PRIMARY KEY IDENTITY(1,1)
	,codCrianca INT FOREIGN KEY REFERENCES tbCrianca(codCrianca)
	,codGenitor INT FOREIGN KEY REFERENCES tbGenitor(codGenitor)
)

CREATE TABLE tbPadrinho(
	codPadrinho INT PRIMARY KEY IDENTITY(1,1)
	,nomePadrinho VARCHAR (50) NOT NULL
	,cpfPadrinho CHAR(11) NOT NULL
	,logradouroPadrinho VARCHAR (30) NOT NULL
    ,numLograPadrinho VARCHAR(4) NOT NULL
    ,bairroPadrinho VARCHAR(30) NOT NULL
    ,bairroPadrinho VARCHAR(30) NOT NULL
    ,cepPadrinho CHAR(8) NOT NULL
    ,cidadePadrinho VARCHAR(30) NOT NULL
    ,ufPadrinho CHAR(2) NOT NULL
    ,complementoPadrinho VARCHAR(30) NOT NULL
)

CREATE TABLE tbApadrinhamento(
	codApadrinhamento INT PRIMARY KEY IDENTITY(1,1)
	,codCrianca INT FOREIGN KEY REFERENCES tbCrianca(codCrianca)
	,codPadrinho INT FOREIGN KEY REFERENCES tbPadrinho(codPadrinho)
	,dtApadrinhamento SMALLDATETIME
)

CREATE TABLE tbProntuario(
	codProntuario INT PRIMARY KEY IDENTITY(1,1)
	,codCrianca INT FOREIGN KEY REFERENCES tbCrianca(codCrianca)
	,obsProntuario VARCHAR(150) NOT NULL
)

CREATE TABLE tbDoenca(
	codDoenca INT PRIMARY KEY IDENTITY(1,1)
	nomeDoenca VARCHAR(30) NOT NULL
	cidDoenca VARCHAR(6) NOT NULL
)

CREATE TABLE tbProntuarioDoenca(
	codProntuarioDoenca INT PRIMARY KEY IDENTITY(1,1)
	,codProntuario INT FOREIGN KEY REFERENCES tbProntuario(codProntuario)
	,codDoenca INT FOREIGN KEY REFERENCES tbDoenca(codDoenca)
	,dtAcometimento SMALLDATETIME NOT NULL
)
