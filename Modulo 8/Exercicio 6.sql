/*FACTEXCHANGERATE
6. Faça uma tabela resumo mostrando a taxa de câmbio média de acordo com cada CurrencyDescription. A tabela final deve conter apenas taxas entre 10 e 100.*/

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
