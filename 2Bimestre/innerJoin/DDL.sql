CREATE DATABASE bdEstoque
GO
USE bdEstoque

CREATE TABLE tbCliente (
    codCliente INT PRIMARY KEY IDENTITY(1,1),
    nomeCliente VARCHAR(100) NOT NULL,
    cpfCliente CHAR(15) NOT NULL,
    emailCliente VARCHAR(100) NOT NULL,
    sexoCliente CHAR(1) NOT NULL,
    dataNascimentoCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbFornecedor (
    codFornecedor INT PRIMARY KEY IDENTITY(1,1),
    nomeFornecedor VARCHAR(100) NOT NULL,
    contatoFornecedor VARCHAR(100) NOT NULL
)

CREATE TABLE tbFabricante (
    codFabricante INT PRIMARY KEY IDENTITY(1,1),
    nomeFabricante VARCHAR(100) NOT NULL
)

CREATE TABLE tbProduto (
    codProduto INT PRIMARY KEY IDENTITY(1,1),
    descricaoProduto VARCHAR(150) NOT NULL,
    valorProduto DECIMAL(10,2) NOT NULL,
    quantidadeProduto INT NOT NULL,
    codFabricante INT NOT NULL,
    codFornecedor INT NOT NULL,
    FOREIGN KEY (codFabricante) REFERENCES tbFabricante(codFabricante),
    FOREIGN KEY (codFornecedor) REFERENCES tbFornecedor(codFornecedor)
)

CREATE TABLE tbVenda (
    codVenda INT PRIMARY KEY IDENTITY(1,1),
    dataVenda DATE NOT NULL,
    valorTotalVenda DECIMAL(10,2) NOT NULL,
    codCliente INT NOT NULL,
    FOREIGN KEY (codCliente) REFERENCES tbCliente(codCliente)
)

CREATE TABLE tbItensVenda (
    codItensVenda INT PRIMARY KEY IDENTITY(1,1),
    codVenda INT NOT NULL,
    codProduto INT NOT NULL,
    quantidadeItensVenda INT NOT NULL,
    subTotalItensVenda DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (codVenda) REFERENCES tbVenda(codVenda),
    FOREIGN KEY (codProduto) REFERENCES tbProduto(codProduto)
)
