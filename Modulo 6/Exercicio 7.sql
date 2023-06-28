/*DIMCUSTOMER
7. Fa�a um agrupamento para saber o total de clientes de acordo com o Sexo e tamb�m a m�dia salarial de acordo com o Sexo. Corrija qualquer resultado �inesperado� com os seus conhecimentos em SQL.*/

SELECT * FROM DimCustomer

SELECT
	Gender AS 'Genero',
	COUNT(Gender) AS 'Quantidade de funcionario',
	AVG(YearlyIncome) AS 'M�dia Salarial'
FROM
	DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender