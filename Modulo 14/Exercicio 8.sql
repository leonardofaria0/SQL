/*8. Faça uma consulta para descobrir os seguintes indicadores dos seus produtos:
Maior quantidade de produtos por marca
Menor quantidade de produtos por marca
Média de produtos por marca*/

SELECT
	MAX(Quantidade) AS 'Maximo',
	MIN(Quantidade) AS 'Minimo',
	AVG(Quantidade) AS 'Média'
FROM (
	SELECT
		BrandName,
		COUNT(*) AS 'Quantidade'
	FROM 
		DimProduct
	GROUP BY BrandName
	) AS T