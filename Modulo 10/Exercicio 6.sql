/*6. Descubra qual � a loja que possui o maior tempo de atividade (em dias). Voc� dever� fazer essa consulta na tabela DimStore, e considerar a coluna OpenDate como refer�ncia para esse c�lculo.*/

SELECT
	StoreName,
	FORMAT(OpenDate, 'dd/MM/yyyy')
FROM 
	DimStore
ORDER BY FORMAT(OpenDate, 'dd/MM/yyyy')