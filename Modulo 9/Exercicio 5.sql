/*5. Voc� precisa criar uma consulta para mostrar a lista de produtos da tabela DimProduct para uma subcategoria espec�fica: �Lamps�.
Utilize o conceito de vari�veis para chegar neste resultado.*/

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