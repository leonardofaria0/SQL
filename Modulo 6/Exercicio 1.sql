/*FACTSALES
1. a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas (channelkey).
b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).
c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas para o ano de 2007.*/

SELECT --top (190) * from FactSales
	channelKey AS 'ID de venda',
	SUM(SalesQuantity) AS 'Total de vendas',
	SUM(ReturnQuantity) AS 'Quantidade retornada'
FROM
	FactSales
WHERE DateKey BETWEEN '20070101' AND '20071230'
GROUP BY channelKey
