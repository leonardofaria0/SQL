/*6. Utilize a vwHistoricoLojas para calcular o acumulado de lojas abertas a cada ano/m�s.*/

SELECT
	*,
	SUM(Lojas_Abertas) OVER(ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	VWHistoricoLojas