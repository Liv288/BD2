USE bdEstoque

INSERT INTO tbCliente(nomeCliente, cpfCliente, emailCliente, sexoCliente, dataNascCliente)
	VALUES 
		('Amando José Santana', '12345678900', 'amandojsantana@outlook.com', 'm', '21/02/1961'),
		('Sheila Carvalho Leal', '45678909823', 'scarvalho@ig.com.br', 'f', '13/09/1978'),
		('Carlos Henrique','76598278299','chenrique@ig.com.br','m','08/09/1981'),
		('Maria Aparecida Souza','07365309899','mapdasouza@outlook.com','f','07/07/1962'),
		('Adriana Nogueira Silva','76354309388','drica1977@ig.com.br','f','09/04/1977'),
		('Paulo Henrique Silva','87390123111', 'phsilva80@hotmail.com','m','02/02/1987')

SELECT * FROM tbCliente

INSERT INTO tbFabricante(nomeFabricante)
	VALUES	
		('Unilever'),
		('P&G'),
		('Bunge')

SELECT * FROM tbFabricante

INSERT INTO tbFornecedor(nomeFornecedor, contatoFornecedor)
	VALUES 
		('Atacadão', 'Carlos Santos'),
		('Assai', 'Maria Stella'),
		('Roldão', 'Paulo César')

SELECT * FROM tbFornecedor

INSERT INTO tbProduto(descProduto, valorProduto, quantProduto, codFabricante, codFornecedor)
	VALUES
		('Amaciante Downy', '5.73', '1500', 2, 1),
		('Amaciabte Confort', '5.45', '2300', 1, 1),
		('Sabão em pó OMO', '5.99', '1280', 1, 2),
		('Margarina Qually', '4.73', '2500', 3, 1),
		('Sasicha Hot Dog Sadia', '6.78', '2900', 3, 2),
		('Mortadela Perdigão', '2.50', '1200', 3, 3),
		('Hamburguer Sadia', '9.89', '1600', 3, 1),
		('Fralda Pumpers', '36.00', '340', 2, 3),
		('Xampoo Seda', '5.89', '800', 1, 2),
		('Condicionador Seda', '6.50', '700', 1, 3)

SELECT * FROM tbProduto

INSERT INTO tbVenda (dataVenda, totalVendas, codCliente)
	VALUES 
		('01/02/2014', '4500.00', 1),
		('03/02/2014', '3400.00', 1),
		('10/02/2014', '2100.00', 2),
		('15/02/2014', '2700.00', 3),
		('17/03/2014', '560.00', 3),
		('09/04/2014', '1200.00', 4),
		('07/05/2014', '3500.00', 5),
		('07/05/2014', '3400.00', 1),
		('05/05/2014', '4000.00', 2)

SELECT * FROM tbVenda

INSERT INTO tbItensVenda(codVenda, codProduto, quantidadeItensVenda, subTotalItensVenda)
	VALUES
		(1, 1, 200, '1500.00'),
		(1, 2, 300, '3000.00'),
		(2, 4, 120, '1400.00'),
		(2, 2, 200, '1000.00'),
		(2, 3, 130, '1000.00'),
		(3, 5, 200, '2100.00'),
		(4, 4, 120, '1000.00'),
		(4, 5, 450, '700.00'),
		(5, 5, 200, '560.00'),
		(6, 7, 200, '600.00'),
		(6, 6, 300, '600.00'),
		(8, 1, 300, '2500.00'),
		(8, 2, 200, '1000.00'),
		(9, 6, 250, '1700.00'),
		(9, 5, 200, '1700.00'),
		(9, 4, 1000, '4000.00')
	
SELECT * FROM tbItensVenda


UPDATE tbProduto
	SET valorProduto = valorProduto+valorProduto*0.1
	WHERE codFabricante = 1

UPDATE tbProduto
	SET valorProduto = valorProduto-valorProduto*0.07
	WHERE codFabricante = 2

UPDATE tbProduto
	SET quantProduto = quantProduto-30
	WHERE codFornecedor = 1

/*4.*/
UPDATE tbCliente
	SET nomeCliente = 'Adriana Nogueira Silva'
	WHERE nomeCliente LIKE 'Adriana Nogueira Silva Campos'

UPDATE tbVenda
	SET totalVendas = totalVendas-totalVendas*0.05
	WHERE DATEPART(YEAR, dataVenda) = 2014

/*6.*/ 
DELETE FROM tbProduto
	WHERE descProduto LIKE 'Sasicha Hot Dog Sadia' /*não sei se é assim :(*/

/*7.*/
UPDATE tbCliente
	SET sexoCliente = 'f'
	WHERE sexoCliente LIKE 'fem'

/*8.*/
UPDATE tbCliente
	SET sexoCliente = 'm'
	WHERE sexoCliente LIKE 'masc'

/*9.*/
UPDATE tbCliente
	SET emailCliente = 'amandojsantana@outlook.com'
	WHERE emailCliente LIKE 'asantana@ig.com.br'

UPDATE tbProduto
	SET quantProduto = quantProduto-quantProduto*0.1
	WHERE codFabricante = 1

UPDATE tbProduto
	SET valorProduto = valorProduto+valorProduto*0.05
	WHERE descProduto LIKE 'Amaciante%'

UPDATE tbProduto
	SET valorProduto = valorProduto+valorProduto*0.1
	WHERE descProduto LIKE '%Sadia'

UPDATE tbProduto
	SET valorProduto = valorProduto-valorProduto*0.1
	WHERE descProduto LIKE '%Seda'

DELETE FROM tbCliente
	WHERE nomeCliente LIKE 'Sheila Carvalho Leal'
