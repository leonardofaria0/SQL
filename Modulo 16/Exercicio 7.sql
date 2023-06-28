/*7.
a) Fa�a um c�lculo de soma m�vel de novos clientes nos �ltimos 2 meses.
b) Fa�a um c�lculo de m�dia m�vel de novos clientes nos �ltimos 2 meses.
c) Fa�a um c�lculo de acumulado dos novos clientes ao longo do tempo.
d) Fa�a um c�lculo de acumulado intra-ano, ou seja, um acumulado que vai de janeiro a dezembro de cada ano, e volta a fazer o c�lculo de acumulado no ano seguinte.*/

SELECT
*,
SUM(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS 'Soma M�vel (2 meses)',
AVG(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS 'M�dia M�vel (2 meses)',
SUM(Novos_Clientes) OVER(ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'Acumulado Total',
SUM(Novos_Clientes) OVER(PARTITION BY Ano ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'Acumulado (YTD)'
FROM vwNovosClientes