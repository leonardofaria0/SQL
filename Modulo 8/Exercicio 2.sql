/*2. Voc� precisa fazer uma an�lise de vendas por produtos. O objetivo final � descobrir o valor total vendido (SalesAmount) por produto.
a) Descubra qual � a cor de produto que mais � vendida (de acordo com SalesQuantity).*/

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