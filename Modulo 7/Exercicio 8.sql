/*8. A tabela abaixo mostra a combina��o entre Marca e Canal de Venda, para as marcas Contoso, Fabrikam e Litware. Crie um c�digo SQL para chegar no mesmo resultado.*/

SELECT * FROM DimProduct
SELECT * FROM DimChannel

SELECT
	DISTINCT(BrandName),
	ChannelName
FROM
	DimProduct
DimProduct CROSS JOIN DimChannel
WHERE BrandName IN('Contoso', 'Fabrikam', 'Litware')