CREATE DATABASE bdEstoque
GO
USE bdEstoque

CREATE TABLE tbCliente(
	codCliente  INT PRIMARY KEY IDENTITY(1,1)
	,nomeCliente VARCHAR(50) NOT NULL
	,cpfCliente CHAR (11) NOT NULL
	,emailCliente VARCHAR(100) NOT NULL
	,sexoCliente CHAR (1) NOT NULL
	,dataNascCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY(1,1)
	,nomeFabricante VARCHAR(50) NOT NULL
)

CREATE TABLE tbFornecedor(
	codFornecedor INT PRIMARY KEY IDENTITY(1,1)
	,nomeFornecedor VARCHAR(50) NOT NULL
	,contatoFornecedor VARCHAR (100) NOT NULL
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY(1,1)
	,descProduto VARCHAR(150) NOT NULL
	,valorProduto DECIMAL(10, 2) NOT NULL
	,quantProduto INT NOT NULL
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
	,codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (codFornecedor)
)

CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY(1,1)
	,dataVenda SMALLDATETIME NOT NULL
	,totalVendas DECIMAL(10, 2)
	,codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
)

CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY(1,1)
	,codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
	,quantidadeItensVenda INT
	,subTotalItensVenda DECIMAL(10, 2) 
)


