/*FACTONLINESALES
3. a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o ID (CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).*/

SELECT TOP 100 * FROM FactOnlineSales

SELECT
	CustomerKey AS 'ID do usuario',
	SUM(SalesQuantity) AS 'Quantidade comprada'
FROM
	FactOnlineSales
GROUP BY CustomerKey
ORDER BY SUM(SalesQuantity) DESC



/*b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a).*/

SELECT
	TOP (3) ProductKey AS 'Chave do produto',
	SUM(SalesQuantity) AS 'Quantidade vendida'
FROM
	FactOnlineSales
WHERE CustomerKey = '19037'
GROUP BY ProductKey
ORDER BY SUM(SalesQuantity) DESC