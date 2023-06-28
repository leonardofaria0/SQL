/*2. Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor total vendido (SalesAmount) por produto.
a) Descubra qual é a cor de produto que mais é vendida (de acordo com SalesQuantity).*/

SELECT * FROM DimProduct
SELECT TOP (1000) * FROM FactSales

SELECT
	SUM(SalesQuantity) AS 'Total Vendido',
	ColorName AS 'Por Cor'
FROM
	DimProduct
INNER JOIN FactSales
	ON DimProduct.ProductKey = FactSales.ProductKey
GROUP BY ColorName
ORDER BY SUM(SalesQuantity) DESC

/* b) Quantas cores tiveram uma quantidade vendida acima de 3.000.000.*/

SELECT
	SUM(SalesQuantity) AS 'Total Vendido',
	ColorName AS 'Por Cor'
FROM
	DimProduct
INNER JOIN FactSales
	ON DimProduct.ProductKey = FactSales.ProductKey
GROUP BY ColorName
HAVING SUM(SalesQuantity) >= 3000000
ORDER BY SUM(SalesQuantity) DESC