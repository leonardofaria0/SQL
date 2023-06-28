/*O gerente comercial pediu a você uma análise da Quantidade Vendida e Quantidade Devolvida para o canal de venda mais importante da empresa: Store.
Utilize uma função SQL para fazer essas consultas no seu banco de dados. Obs: Faça essa análise considerando a tabela FactSales.*/

SELECT
	TOP(100) *
FROM
	FactSales

SELECT
	SUM(SalesQuantity),
	SUM(ReturnQuantity)
FROM
	FactSales
WHERE channelKey = 1

--Lembrando que o ChannelKey, está em outra tabela