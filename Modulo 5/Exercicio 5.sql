/*Agora voc� precisa fazer uma an�lise dos produtos. Ser� necess�rio descobrir as seguintes informa��es:
a) Quantidade distinta de cores de produtos.
b) Quantidade distinta de marcas
c) Quantidade distinta de classes de produto
Para simplificar, voc� pode fazer isso em uma mesma consulta.*/

SELECT --* FROM DimProduct
	COUNT(DISTINCT ColorName) AS 'Nome da Cor',
	COUNT(DISTINCT BrandName) AS 'Marca',
	COUNT(DISTINCT ClassName) AS 'Nome da Classe'
FROM
	DimProduct