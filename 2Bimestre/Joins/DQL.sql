USE bdEstoque


-- 1.Cadastrar três novos fornecedores via query
INSERT INTO tbFornecedor(nomeFornecedor, contatoFornecedor)
	VALUES 
		('Mercadão', 'Livia Oliveira'),
		('ETEC', 'Aline Mendonça'),
		('Veran', 'Maria')

-- 2.Fazer uma consulta utilizando o nome do fornecedor e a descrição dos produtos que cada fornecedor fornece
SELECT nomeFornecedor AS 'Nome do Fornecedor', descricaoProduto AS 'Nome do Produto' FROM tbFornecedor
	INNER JOIN tbProduto
		ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

--3.Criar uma instrução utilizando left join e outra utilizando right join para exibir todos os fornecedores, incluindo ainda os três novos fornecedores para os quais não foram registrados novos produtos
SELECT nomeFornecedor AS 'Nome do Fornecedor', descricaoProduto AS 'Nome do Produto' FROM tbFornecedor
	LEFT JOIN tbProduto
		ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

SELECT descricaoProduto AS 'Nome do Produto', nomeFornecedor AS 'Nome do Fornecedor' FROM tbProduto
	RIGHT JOIN tbFornecedor
		ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

-- 4.Cadastrar três novos produtos deixando para eles o código do fornecedor em branco
INSERT INTO tbProduto(descricaoProduto, valorProduto, quantidadeProduto, codFabricante, codFornecedor)
	VALUES
		('Detergente Ypê', 2.45, 500, 1, NULL),
        ('Sabonete Dove', 3.20, 800, 2, NULL),
        ('Desinfetante', 4.90, 300, 3, NULL)

-- 5.Criar um select utilizando a instrução full join exibindo assim todos os fornecedores, inclusive aqueles para os quais não foram atribuídos produtos, e aqueles produtos para os quais não foram atribuídos fornecedores
SELECT nomeFornecedor AS 'Nome do Fornecedor', descricaoProduto AS 'Nome do Produto' FROM tbFornecedor
	FULL JOIN tbProduto
		ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

-- 6.Criar um select com a instrução full join entre fornecedor e produto.  Quantos registros a consulta retornou? O que aconteceu
SELECT nomeFornecedor AS 'Nome do Fornecedor', descricaoProduto AS 'Nome do Produto' FROM tbFornecedor
	CROSS JOIN tbProduto

