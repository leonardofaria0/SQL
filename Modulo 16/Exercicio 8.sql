/*8. Fa�a os c�lculos de MoM e YoY para avaliar o percentual de crescimento de novos clientes, entre o m�s atual e o m�s anterior, e entre um m�s atual e o mesmo m�s do ano anterior.*/

SELECT
*,
FORMAT(CONVERT(FLOAT, Novos_Clientes)/NULLIF(LAG(Novos_Clientes, 1) OVER(ORDER BY ID), 0) - 1, '0.00%') AS '% MoM',
FORMAT(CONVERT(FLOAT, Novos_Clientes)/NULLIF(LAG(Novos_Clientes, 12) OVER(ORDER BY ID), 0) - 1, '0.00%') AS '% YoY'
FROM vwNovosClientes