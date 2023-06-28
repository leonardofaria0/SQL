/*Imagine que voc� precise extrair um relat�rio da tabela DimStore, com informa��es de lojas. Mas voc� precisa apenas das lojas que n�o est�o mais funcionando atualmente.
a) Utilize a coluna de Status para filtrar a tabela e trazer apenas as lojas que n�o est�o mais funcionando.
b) Agora imagine que essa coluna de Status n�o existe na sua tabela. Qual seria a outra forma que voc� teria de descobrir quais s�o as lojas que n�o est�o mais funcionando?*/

SELECT
	StoreName,
	CloseDate,
	Status
FROM
	DimStore
--WHERE Status = 'Off'
WHERE CloseDate IS NOT NULL