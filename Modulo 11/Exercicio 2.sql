/*2. Você ficou responsável pelo controle de produtos da empresa e deverá fazer uma análise da quantidade de produtos por Marca.
A divisão das marcas em categorias deverá ser a seguinte:
CATEGORIA A: Mais de 500 produtos
CATEGORIA B: Entre 100 e 500 produtos
CATEGORIA C: Menos de 100 produtos
Faça uma consulta à tabela DimProduct e retorne uma tabela com um agrupamento de Total de Produtos por Marca, além da coluna de Categoria, conforme a regra acima.*/

SELECT
	BrandName AS 'Marca',
	COUNT(*) AS 'Numero de produto',
	CASE
		WHEN COUNT(*) >= 500 THEN 'Categoria A'
		WHEN COUNT(*) >= 100 THEN 'Categoria B'
		ELSE 'Categoria C'
	END AS 'Categorias'
FROM
	DimProduct
GROUP BY BrandName