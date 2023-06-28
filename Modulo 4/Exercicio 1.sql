/*Voc� � o gerente da �rea de compras e precisa criar um relat�rio com as TOP 100 vendas, de acordo com a quantidade vendida. Voc� precisa fazer isso em 10min pois o diretor de compras solicitou essa informa��o para apresentar em uma reuni�o.
Utilize seu conhecimento em SQL para buscar essas TOP 100 vendas, de acordo com o total vendido (SalesAmount).*/

SELECT
	TOP(100) SalesAmount
FROM
	FactSales
ORDER BY SalesAmount DESC