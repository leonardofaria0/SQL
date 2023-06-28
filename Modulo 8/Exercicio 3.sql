/* 3. Crie um agrupamento de quantidade vendida (SalesQuantity) por categoria do produto (ProductCategoryName). Obs: Voc� precisar� fazer mais de 1 INNER JOIN, dado que a rela��o entre FactSales e DimProductCategory n�o � direta.*/

SELECT TOP (100)
	ProductCategoryName AS 'Categoria do Produto',
	SUM(SalesQuantity) AS 'Quantidade vendida'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
INNER JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
GROUP BY ProductCategoryName
ORDER BY SUM(SalesQuantity) DESC



/*SELECT TOP(1000) * FROM FactSales
SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory
SELECT * FROM DimProductCategory