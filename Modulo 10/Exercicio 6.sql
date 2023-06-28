/*6. Descubra qual é a loja que possui o maior tempo de atividade (em dias). Você deverá fazer essa consulta na tabela DimStore, e considerar a coluna OpenDate como referência para esse cálculo.*/

SELECT
	StoreName,
	FORMAT(OpenDate, 'dd/MM/yyyy')
FROM 
	DimStore
ORDER BY FORMAT(OpenDate, 'dd/MM/yyyy')