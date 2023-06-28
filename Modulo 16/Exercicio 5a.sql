/*Exerc�cio Desafio 1.
Para responder os pr�ximos 2 exerc�cios, voc� precisar� criar uma View auxiliar. Diferente do que foi feito anteriormente, voc� n�o ter� acesso ao c�digo dessa view antes do gabarito.
A sua view deve se chamar vwHistoricoLojas e deve conter um hist�rico com a quantidade de lojas abertas a cada Ano/M�s. Os desafios s�o:
(1) Criar uma coluna de ID para essa View
(2) Relacionar as tabelas DimDate e DimStore
Dicas:
1- A coluna de ID ser� criada a partir de uma fun��o de janela. Voc� dever� se atentar a forma como essa coluna dever� ser ordenada, pensando que queremos visualizar uma ordem de Ano/M�s que seja: 2005/january, 2005/February... e n�o 2005/April, 2005/August...
2- As colunas Ano, M�s e Qtd_Lojas correspondem, respectivamente, �s seguintes colunas: CalendarYear e CalendarMonthLabel da tabela DimDate e uma contagem da coluna OpenDate da tabela DimStore.*/

CREATE VIEW vwHistoricoLojas AS (
SELECT
	ROW_NUMBER() OVER(ORDER BY CalendarMonth) AS 'ID',
	CalendarYear AS 'Ano',
	CalendarMonthLabel AS 'M�s',
	COUNT(OpenDate) AS 'Lojas_Abertas'
FROM
	DimDate
LEFT JOIN DimStore
	ON DimDate.Datekey = DimStore.OpenDate
GROUP BY CalendarYear, CalendarMonthLabel, CalendarMonth
)
