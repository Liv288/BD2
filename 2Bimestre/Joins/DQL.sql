USE bdEstoque


-- 1.Cadastrar tr�s novos fornecedores via query
INSERT INTO tbFornecedor(nomeFornecedor, contatoFornecedor)
	VALUES 
		('Mercad�o', 'Livia Oliveira'),
		('ETEC', 'Aline Mendon�a'),
		('Veran', 'Maria')

-- 2.Fazer uma consulta utilizando o nome do fornecedor e a descri��o dos produtos que cada fornecedor fornece
SELECT nomeFornecedor AS 'Nome do Fornecedor', descricaoProduto AS 'Nome do Produto' FROM tbFornecedor
	INNER JOIN tbProduto
		ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

--3.Criar uma instru��o utilizando left join e outra utilizando right join para exibir todos os fornecedores, incluindo ainda os tr�s novos fornecedores para os quais n�o foram registrados novos produtos
SELECT nomeFornecedor AS 'Nome do Fornecedor', descricaoProduto AS 'Nome do Produto' FROM tbFornecedor
	LEFT JOIN tbProduto
		ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

SELECT descricaoProduto AS 'Nome do Produto', nomeFornecedor AS 'Nome do Fornecedor' FROM tbProduto
	RIGHT JOIN tbFornecedor
		ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

-- 4.Cadastrar tr�s novos produtos deixando para eles o c�digo do fornecedor em branco
INSERT INTO tbProduto(descricaoProduto, valorProduto, quantidadeProduto, codFabricante, codFornecedor)
	VALUES
		('Detergente Yp�', 2.45, 500, 1, NULL),
        ('Sabonete Dove', 3.20, 800, 2, NULL),
        ('Desinfetante', 4.90, 300, 3, NULL)

-- 5.Criar um select utilizando a instru��o full join exibindo assim todos os fornecedores, inclusive aqueles para os quais n�o foram atribu�dos produtos, e aqueles produtos para os quais n�o foram atribu�dos fornecedores
SELECT nomeFornecedor AS 'Nome do Fornecedor', descricaoProduto AS 'Nome do Produto' FROM tbFornecedor
	FULL JOIN tbProduto
		ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

-- 6.Criar um select com a instru��o full join entre fornecedor e produto.  Quantos registros a consulta retornou? O que aconteceu
SELECT nomeFornecedor AS 'Nome do Fornecedor', descricaoProduto AS 'Nome do Produto' FROM tbFornecedor
	CROSS JOIN tbProduto

