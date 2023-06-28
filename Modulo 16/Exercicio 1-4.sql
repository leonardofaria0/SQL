/*Para resolver os exercícios 1 a 4, crie uma View chamada vwProdutos, que contenha o agrupamento das colunas BrandName, ColorName e os totais de quantidade vendida por marca/cor e também o total de receita por marca/cor. */	   


 --COMANDO USADO PARA CRIAR A VIEW
/*CREATE OR ALTER VIEW vwProdutos AS (
SELECT
	BrandName AS 'Marca',
	ColorName AS 'Cor',
	COUNT(SalesQuantity) AS 'Quantidade_vendida',
	ROUND(SUM(SalesAmount), 2) AS 'Receita_total'
FROM
	DimProduct
INNER JOIN FactSales
	ON DimProduct.ProductKey = FactSales.ProductKey
GROUP BY BrandName, ColorName
)
*/

--1. Utilize a View vwProdutos para criar uma coluna extra calculando a quantidade total vendida dos produtos.

SELECT 
	*,
	SUM(Quantidade_vendida) OVER() AS 'Quantidade total'
FROM 
	vwProdutos
ORDER BY Marca

--2. Crie mais uma coluna na consulta anterior, incluindo o total de produtos vendidos para cada marca.

SELECT 
	*,
	SUM(Quantidade_vendida) OVER() AS 'Quantidade total',
	SUM(Quantidade_vendida) OVER(PARTITION BY Marca) AS 'Quantidade por marca'
FROM 
	vwProdutos
ORDER BY Marca

/* 3. Calcule o % de participação do total de vendas de produtos por marca.
Ex: A marca A. Datum teve uma quantidade total de vendas de 199.041 de um total de 3.406.089 de vendas. Isso significa que a da marca A. Datum é 199.041/3.406.089 = 5,84%.*/

SELECT
	*,
	SUM(Quantidade_vendida) OVER() AS 'Total_vendido',
	SUM(Quantidade_vendida) OVER(PARTITION BY Marca) AS 'Total_Marca',
	FORMAT(1.0 * SUM(Quantidade_vendida) OVER(PARTITION BY Marca) / SUM(Quantidade_vendida) OVER(), '0.00%') AS '% Participação'
FROM
	vwProdutos

/*4. Crie uma consulta à View vwProdutos, selecionando as colunas Marca, Cor, Quantidade_Vendida e também criando uma coluna extra de Rank para descobrir a posição de cada Marca/Cor. Você deve obter o resultado abaixo. Obs: Sua consulta deve ser filtrada para que seja mostrada apenas a marca Contoso.*/

SELECT
	Marca,
	Cor,
	Quantidade_vendida,
	RANK() OVER(ORDER BY Quantidade_vendida DESC) AS 'Rank'
FROM
	vwProdutos
WHERE Marca = 'Contoso'