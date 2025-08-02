CREATE DATABASE bdComercioLivros
GO
USE bdComercioLivros


CREATE TABLE tbAutor (
  codAutor INT PRIMARY KEY
  ,nomeAutor VARCHAR(100) NULL
)

CREATE TABLE tbEditora (
  codEditora INT PRIMARY KEY
  ,nomeEditora VARCHAR(100) NULL
)

CREATE TABLE tbLivro (
  codLivro INT NULL
  ,nomeLivro VARCHAR(100) NULL
  ,isbnLivro CHAR(7) NULL
  ,numPaginasLivro INT NULL
  ,codAutor INT FOREIGN KEY REFERENCES tbAutor(codAutor) NULL
  ,codEditora INT FOREIGN KEY REFERENCES tbEditora(codEditora) NULL
)