/*6. A empresa implementou um programa de fidelização de clientes empresariais. Todos aqueles que comprarem mais de 3000 unidades de um mesmo produto receberá descontos em outras compras.
Você deverá descobrir as informações de CustomerKey e CompanyName destes clientes.*/

SELECT TOP(100) 
	CustomerKey,
	CompanyName
FROM DimCustomer
WHERE CustomerKey IN(
			SELECT
			CustomerKey
			FROM
				FactOnlineSales
			GROUP BY ProductKey, CustomerKey
			HAVING COUNT(*) >= 3000)