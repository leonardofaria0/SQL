/*1. a) Faça um resumo da quantidade vendida (Sales Quantity) de acordo com o nome do canal de vendas (ChannelName). Você deve ordenar a tabela final de acordo com SalesQuantity, em ordem decrescente.*/
SELECT TOP(1000) * FROM FactSales
SELECT * FROM DimChannel

SELECT
	ChannelName AS 'Canal de vendas',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
GROUP BY ChannelName
ORDER BY SUM(SalesQuantity) DESC

/*b) Faça um agrupamento mostrando a quantidade total vendida (Sales Quantity) e quantidade total devolvida (Return Quantity) de acordo com o nome das lojas (StoreName).*/

SELECT
	SUM(SalesQuantity) AS 'Total Vendido',
	SUM(ReturnQuantity) AS 'Total Retornado',
	StoreName AS 'Nome da Loja'
FROM
	FactSales
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY StoreName

/*c) Faça um resumo do valor total vendido (Sales Amount) para cada mês (CalendarMonthLabel) e ano (CalendarYear).*/

SELECT TOP(1000) * FROM FactSales
SELECT TOP(1000) * FROM DimDate

SELECT
	SUM(SalesAmount) AS 'Total Vendido',
	CalendarMonthLabel AS 'Mês',
	CalendarYear AS 'Ano'
FROM
	FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.DateKey
GROUP BY CalendarMonthLabel, CalendarYear, CalendarMonth
ORDER BY CalendarMonth