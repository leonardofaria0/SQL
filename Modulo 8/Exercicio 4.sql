/*FACTONLINESALES
4. a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o nome completo do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).*/

SELECT TOP (1000) * FROM FactOnlineSales
SELECT * FROM DimCustomer

SELECT TOP (1000)
	DimCustomer.CustomerKey AS 'ID do cliente',
	FirstName AS 'Primeiro Nome',
	MiddleName AS 'Nome do meio',
	LastName AS 'Ultimo nome',
	SUM(SalesQuantity) 'Total de compra'
FROM
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE CustomerType = 'Person'
GROUP BY FirstName, MiddleName, LastName, DimCustomer.CustomerKey
ORDER BY SUM(SalesQuantity) DESC

/*
b) Feito isso, faça um agrupamento de produtos e descubra quais foram os top 10 produtos mais comprados pelo cliente da letra a, considerando o nome do produto.*/ 7665

SELECT TOP(10)-- * FROM FactOnlineSales
	ProductName AS 'Nome do Produto',
	SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM
	FactOnlineSales
INNER JOIN DimProduct
	ON FactOnlineSales.ProductKey = DimProduct.ProductKey
WHERE CustomerKey = '7665'
GROUP BY ProductName
ORDER BY SUM(SalesQuantity) DESC
