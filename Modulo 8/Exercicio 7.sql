/*FACTSTRATEGYPLAN
7. Descubra o valor total na tabela FactStrategyPlan destinado aos cenários: Actual e Budget.*/

SELECT TOP(100) * FROM FactStrategyPlan
SELECT * FROM DimScenario

SELECT
	ScenarioName AS 'Cenario',
	SUM(Amount) AS 'Total'
FROM
	FactStrategyPlan
INNER JOIN DimScenario
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
WHERE ScenarioName IN ('Actual', 'Budget')
GROUP BY ScenarioName