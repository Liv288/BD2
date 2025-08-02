USE bdEstoque

-- a) Listar as descrições dos produtos ao lado do nome dos fabricantes
SELECT descricaoProduto, nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbFabricante.codFabricante = tbProduto.codFabricante

-- b) Listar as descrições dos produtos ao lado do nome dos fornecedores
SELECT descricaoProduto, nomeFornecedor FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

-- c) Listar a soma das quantidades dos produtos agrupadas pelo nome do fabricante
SELECT nomeFabricante, SUM(quantidadeProduto) AS SomaQuantidadeProduto FROM tbFabricante
		INNER JOIN tbProduto
			ON tbProduto.codFabricante = tbFabricante.codFabricante
				GROUP BY nomeFabricante

-- d) Listar o total das vendas ao lado do nome do cliente
SELECT nomeCliente, valorTotalVenda FROM tbCliente
	INNER JOIN tbVenda	
		ON  tbVenda.codCliente = tbCliente.codCliente 

-- e) Listar a média dos preços dos produtos agrupados pelo nome do fornecedor
SELECT nomeFornecedor, AVG(valorProduto) AS MediaValorProduto FROM tbFornecedor
	INNER JOIN tbProduto
		ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
			GROUP BY nomeFornecedor

-- f) Listar a soma de todas as vendas agrupadas pelo nome do cliente, em ordem alfabética
SELECT nomeCliente, SUM(valorTotalVenda) AS SomaTotalVendas FROM tbCliente
	INNER JOIN tbVenda
		ON tbVenda.codCliente = tbCliente.codCliente
			GROUP BY nomeCliente
				ORDER BY nomeCliente

-- g) Listar a soma dos preços dos produtos agrupados pelo nome do fabricante
SELECT nomeFabricante, SUM(valorProduto) AS SomaValorProduto FROM tbFabricante
	INNER JOIN tbProduto
		ON tbProduto.codFabricante = tbFabricante.codFabricante
			GROUP BY nomeFabricante

-- h) Listar a média dos preços dos produtos agrupados pelo nome do fornecedor
SELECT nomeFornecedor, AVG(valorProduto) AS MediaValorProduto FROM  tbFornecedor
	INNER JOIN tbProduto
		ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
			GROUP BY nomeFornecedor

-- i) Listar a soma das vendas (subtotais) agrupadas pelo nome do produto
SELECT descricaoProduto, SUM(subTotalItensVenda) AS SomaSubTotalItensVenda FROM  tbProduto
	INNER JOIN tbItensVenda
		ON tbItensVenda.codProduto = tbProduto.codProduto
			GROUP BY descricaoProduto

-- j) Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014
SELECT nomeCliente, SUM(valorTotalVenda) AS SomaVendasFevereiro2014 FROM tbCliente
	INNER JOIN tbVenda
		ON tbVenda.codCliente = tbCliente.codCliente
			WHERE tbVenda.dataVenda BETWEEN '2014/02/01' AND '2014/02/28'
				GROUP BY tbCliente.nomeCliente
