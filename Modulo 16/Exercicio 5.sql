--5. A partir da view criada no exerc�cio anterior, voc� dever� fazer uma soma m�vel considerando sempre o m�s atual + 2 meses para tr�s.

SELECT
	*,
	SUM(Lojas_Abertas) OVER(ORDER BY ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
FROM
	vwHistoricoLojas