/*5. Você precisa criar uma consulta para mostrar a lista de produtos da tabela DimProduct para uma subcategoria específica: ‘Lamps’.
Utilize o conceito de variáveis para chegar neste resultado.*/

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory

DECLARE @varNomeSubCategoria VARCHAR(30)
DECLARE @varIDSubCategoria INT

SET @varNomeSubCategoria = 'Lamps'
SET @varIDSubCategoria = (SELECT ProductSubcategoryKey FROM DimProductSubcategory WHERE ProductSubcategoryName = @varNomeSubCategoria)

SELECT
	*
FROM
	DimProduct
WHERE ProductSubcategoryKey = @varIDSubCategoria