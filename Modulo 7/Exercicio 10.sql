/*A tabela abaixo é resultado de um Join entre a tabela FactSales e as tabelas: DimChannel, DimStore e DimProduct.
Recrie esta consulta e classifique em ordem crescente de acordo com SalesAmount.*/

SELECT TOP (1000) * FROM FactSales
SELECT TOP (1000) * FROM DimChannel
SELECT TOP (1000) * FROM DimStore
SELECT TOP (1000) * FROM DimProduct

SELECT TOP (1000)
	SalesKey,
	ChannelName,
	StoreName,
	ProductName,
	SalesAmount
FROM
	FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
INNER JOIN DimStore
	ON	FactSales.StoreKey = DimStore.StoreKey
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
ORDER BY SalesAmount ASC
