/*Faça uma tabela resumo mostrando o total de VacationHours para cada cargo (Title). Você deve considerar apenas as mulheres, dos departamentos de Production, Marketing, Engineering e Finance, para os funcionários contratados entre os anos de 1999 e 2000.*/

SELECT * FROM DimEmployee

SELECT
	SUM(VacationHours) AS 'Hora Trabalhada',
	Title AS 'Titulo'
FROM
	DimEmployee
WHERE HireDate BETWEEN '19990101' AND '20001231' AND Gender = 'F' AND DepartmentName IN('Production', 'Marketing', 'Engineering', 'Finance')
GROUP BY Title