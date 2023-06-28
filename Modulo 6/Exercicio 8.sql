/*Faça um agrupamento para descobrir a quantidade total de clientes e a média salarial de acordo com o seu nível escolar. Utilize a coluna Education da tabela DimCustomer para fazer esse agrupamento.*/

SELECT * FROM DimCustomer

SELECT
	COUNT(CustomerKey) 'Quantidade total',
	Education AS 'Formação',
	AVG(YearlyIncome) AS 'Média Salarial'
FROM
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education