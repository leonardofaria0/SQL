/*FACTEXCHANGERATE
6. Fa�a uma tabela resumo mostrando a taxa de c�mbio m�dia de acordo com cada CurrencyDescription. A tabela final deve conter apenas taxas entre 10 e 100.*/

SELECT TOP(100) * FROM FactExchangeRate
SELECT * FROM DimCurrency

SELECT
	CurrencyDescription AS 'Moeda',
	AVG(AverageRate) AS 'Taxa'
FROM
	FactExchangeRate
INNER JOIN DimCurrency
	ON FactExchangeRate.CurrencyKey = DimCurrency.CurrencyKey
GROUP BY CurrencyDescription
HAVING AVG(AverageRate) BETWEEN 10 AND 100
