/*DIMPRODUCT/DIMPRODUCTSUBCATEGORY
9. Fa�a um agrupamento de quantidade de produtos por ProductSubcategoryName. Leve em considera��o em sua an�lise apenas a marca Contoso e a cor Silver.*/

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory

SELECT
	COUNT(*) AS 'Quantidade',
	ProductSubcategoryName AS 'Categoria do produto'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE BrandName = 'Contoso' AND ColorName = 'Silver'
GROUP BY ProductSubcategoryName