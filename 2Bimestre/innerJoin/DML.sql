USE bdEstoque


INSERT INTO tbCliente (nomeCliente, cpfCliente, emailCliente, sexoCliente, dataNascimentoCliente) 
	VALUES
		('Armando José Santana', '12345678900', 'armandosantana@outlook.com', 'm', 1990/02/21),
		('Sheila Carvalho Leal', '45678909823', 'scarvalho@ig.com.br', 'f', 1981/03/09),
		('Carlos Henrique Souza', '76598723289', 'chenrique@ig.com.br', 'm', 1998/10/03),
		('Maria Aparecida Souza', '87365309893', 'mapdesouza@outlook.com', 'f', 1979/12/02),
		('Adriana Nogueira Silva', '76543098328', 'dricca1977@ig.com.br', 'f', 1977/04/09),
		('Paulo Henrique Silva', '87390123111', 'phsilva80@hotmail.com', 'm', 1987/02/02)


INSERT INTO tbFabricante (nomeFabricante)
	VALUES
		('Unilever'),
		('P&G'),
		('Bunge')


INSERT INTO tbFornecedor (nomeFornecedor, contatoFornecedor) 
	VALUES
		('Atacadão', 'Carlos Santos'),
		('Assaí', 'Maria Stella'),
		('Rolidão', 'Paulo César')


INSERT INTO tbProduto (descricaoProduto, valorProduto, quantidadeProduto, codFabricante, codFornecedor) 
	VALUES
		('Amaciante Downy', 5.76, 1500, 2, 1),
		('Sabão em pó OMO', 6.50, 1200, 1, 2),
		('Salsicha Hot Dog', 2.00, 1300, 3, 3),
		('Margarina Qualy', 1.10, 2000, 2, 2),
		('Mortadela Perdigão', 3.00, 1400, 3, 1),
		('Margarina Delícia', 1.00, 1800, 1, 2),
		('Farinha Panco', 2.00, 2500, 3, 3),
		('Xampu Seda', 6.89, 900, 1, 2),
		('Condicionador Seda', 6.50, 1000, 1, 3)


INSERT INTO tbVenda (dataVenda, valorTotalVenda, codCliente) 
	VALUES
		('2014-02-01', 4500.00, 1),
		('2014-02-03', 3400.00, 1),
		('2014-02-10', 2100.00, 2),
		('2014-02-15', 2700.00, 3),
		('2014-03-17', 560.00, 3),
		('2014-04-09', 1200.00, 4),
		('2014-05-07', 3500.00, 5),
		('2014-05-03', 3400.00, 1),
		('2014-05-05', 4000.00, 2)

/*DELETE FROM tbVenda;
DBCC CHECKIDENT ('tbVenda', RESEED, 0);

SELECT * FROM tbVenda*/
INSERT INTO tbItensVenda (codVenda, codProduto, quantidadeItensVenda, subTotalItensVenda) 
	VALUES
		(1, 1, 200, 1500.00),
		(1, 2, 300, 3000.00),
		(2, 1, 200, 1500.00),
		(2, 3, 300, 1000.00),
		(3, 2, 130, 1000.00),
		(3, 4, 120, 1000.00),
		(4, 5, 100, 1000.00),
		(4, 6, 200, 560.00),
		(5, 6, 120, 600.00),
		(6, 7, 100, 1000.00),
		(7, 7, 130, 2500.00),
		(7, 8, 100, 600.00),
		(8, 9, 200, 3000.00),
		(9, 9, 250, 3500.00),
		(9, 4, 1000, 4000.00)
