/*7.
a) Faça um cálculo de soma móvel de novos clientes nos últimos 2 meses.
b) Faça um cálculo de média móvel de novos clientes nos últimos 2 meses.
c) Faça um cálculo de acumulado dos novos clientes ao longo do tempo.
d) Faça um cálculo de acumulado intra-ano, ou seja, um acumulado que vai de janeiro a dezembro de cada ano, e volta a fazer o cálculo de acumulado no ano seguinte.*/

SELECT
*,
SUM(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS 'Soma Móvel (2 meses)',
AVG(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS 'Média Móvel (2 meses)',
SUM(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'Acumulado Total',
SUM(Novos_Clientes) OVER(PARTITION BY Ano ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'Acumulado (YTD)'
FROM vwNovosClientes