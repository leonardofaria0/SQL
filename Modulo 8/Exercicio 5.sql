/*Faça um resumo mostrando o total de produtos comprados (Sales Quantity) de acordo com o sexo dos clientes.*/

SELECT TOP(1000) * FROM FactOnlineSales
SELECT * FROM DimCustomer

SELECT
	Gender AS 'Genero',
	SUM(SalesQuantity) AS 'Quantidade vendida'
FROM
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE Gender IS NOT NULL
GROUP BY Gender
ORDER BY SUM(SalesQuantity) DESC
