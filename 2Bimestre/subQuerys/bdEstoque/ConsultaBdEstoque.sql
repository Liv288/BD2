USE bdEstoque

/*1.criar uma consulta que retorne o codigo do produto, o nome do produto e o nome do fabricante somente daqueles
produtos que custam igual ao valor mais alto*/
SELECT codProduto, descProduto, 
    (SELECT nomeFabricante FROM tbFabricante 
    	WHERE tbFabricante.codFabricante = tbProduto.codFabricante) AS 'nome do Fabricante' FROM tbProduto
    		WHERE valorProduto = (SELECT MAX(valorProduto) FROM tbProduto);

/*2. criar uma consulta que retorne o nome do produto e o nome do fabricante e o valor somente dos produtos
que custem acima do valor m�dio dos produtos em estoque */
SELECT codProduto, descProduto,
    (SELECT nomeFabricante FROM tbFabricante 
    	WHERE tbFabricante.codFabricante = tbProduto.codFabricante) AS 'nome do Fabricante', AS 'valor do Produto' FROM tbProduto
			WHERE valorProduto > (SELECT AVG(valorProduto) FROM tbProduto);

--3.criar uma consulta que retorne o nome dos clientes que tiveram vendas com valor acima do valor m�dio das vendas 
SELECT nomeCliente FROM tbCliente
	WHERE EXISTS (SELECT * FROM tbVenda
		WHERE tbVenda.codCliente = tbCliente.codCliente 
			AND tbVenda.totalVendas > (SELECT AVG(totalVendas) FROM tbVenda));

--4. criar uma consulta que retorno o nome e o pre�o dos produtos mais caros 
SELECT descProduto, valorProduto FROM tbProduto
	WHERE valorProduto = (SELECT MAX(valorProduto) FROM tbProduto);

--5. criar uma consulta que retorne o nome e o pre�o do produto mais barato
SELECT descProduto, valorProduto FROM tbProduto
	WHERE valorProduto = (SELECT MIN(valorProduto) FROM tbProduto);





