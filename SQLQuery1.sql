CREATE OR ALTER VIEW Vendas_Internet AS
SELECT
	SalesOrderNumber AS 'Numero de Venda',
	OrderDate AS'Data de venda',
	EnglishProductCategoryName AS 'Nome da categoria',
	CONCAT(FirstName, ' ', LastName) AS 'Nome Completo',
	Gender AS 'Genero',
	SalesTerritoryCountry AS 'País',
	OrderQuantity AS 'Quantidade de venda',
	TotalProductCost AS 'Preço de custo',
	SalesAmount AS 'Preço de venda'
FROM
	FactInternetSales
INNER JOIN DimCustomer
	ON FactInternetSales.CustomerKey = DimCustomer.CustomerKey

INNER JOIN DimSalesTerritory
	ON FactInternetSales.SalesTerritoryKey = DimSalesTerritory.SalesTerritoryKey

INNER JOIN DimProduct
	ON FactInternetSales.ProductKey = DimProduct.ProductKey
		INNER JOIN DimProductSubcategory
			ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
				INNER JOIN DimProductCategory
					ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
WHERE YEAR(OrderDate) = 2013