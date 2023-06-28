/*6. a) Crie uma View que seja o resultado de um agrupamento da tabela DimProduct. O resultado esperado da consulta deverá ser o total de produtos por marca. Chame essa View de vw_6a.*/
GO
CREATE VIEW vw_6a AS
SELECT
	BrandName AS 'Marca',
	COUNT(*) AS 'Quantidade de produto'
FROM
	DimProduct
GROUP BY BrandName
GO
/*b) Altere a View criada no exercício anterior, adicionando o peso total por marca. Atenção: sua View final deverá ter então 3 colunas: Nome da Marca, Total de Produtos e Peso Total.*/
GO
ALTER VIEW vw_6a AS
SELECT
	BrandName AS 'Marca',
	COUNT(*) AS 'Quantidade de produto',
	SUM(Weight) AS 'Peso total dos produtos'
FROM
	DimProduct
GROUP BY BrandName
GO
/*c) Exclua a View vw_6a.*/
DROP VIEW vw_6a