/*Exercício Desafio 1.
Para responder os próximos 2 exercícios, você precisará criar uma View auxiliar. Diferente do que foi feito anteriormente, você não terá acesso ao código dessa view antes do gabarito.
A sua view deve se chamar vwHistoricoLojas e deve conter um histórico com a quantidade de lojas abertas a cada Ano/Mês. Os desafios são:
(1) Criar uma coluna de ID para essa View
(2) Relacionar as tabelas DimDate e DimStore
Dicas:
1- A coluna de ID será criada a partir de uma função de janela. Você deverá se atentar a forma como essa coluna deverá ser ordenada, pensando que queremos visualizar uma ordem de Ano/Mês que seja: 2005/january, 2005/February... e não 2005/April, 2005/August...
2- As colunas Ano, Mês e Qtd_Lojas correspondem, respectivamente, às seguintes colunas: CalendarYear e CalendarMonthLabel da tabela DimDate e uma contagem da coluna OpenDate da tabela DimStore.*/

CREATE VIEW vwHistoricoLojas AS (
SELECT
	ROW_NUMBER() OVER(ORDER BY CalendarMonth) AS 'ID',
	CalendarYear AS 'Ano',
	CalendarMonthLabel AS 'Mês',
	COUNT(OpenDate) AS 'Lojas_Abertas'
FROM
	DimDate
LEFT JOIN DimStore
	ON DimDate.Datekey = DimStore.OpenDate
GROUP BY CalendarYear, CalendarMonthLabel, CalendarMonth
)
