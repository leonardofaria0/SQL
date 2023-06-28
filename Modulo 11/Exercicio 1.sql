/*1. O setor de vendas decidiu aplicar um desconto aos produtos de acordo com a sua classe. O percentual aplicado dever� ser de:
Economy -> 5%
Regular -> 7%
Deluxe -> 9%
a) Fa�a uma consulta � tabela DimProduct que retorne as seguintes colunas: ProductKey, ProductName, e outras duas colunas que dever�o retornar o % de Desconto e UnitPrice com desconto.*/


SELECT
	ProductKey AS 'Chave do produto', 
	ProductName AS 'Nome do produto',
	UnitPrice AS 'Pre�o total',
	ClassName AS 'Nome da classe',
	CASE
		WHEN ClassName = 'Economy' THEN (UnitPrice - (UnitPrice * 0.05))
		WHEN ClassName = 'Regular' THEN (UnitPrice - (UnitPrice * 0.07))
		ELSE (UnitPrice - (UnitPrice * 0.09))
		END AS 'Pre�o com desconto',
	CASE
		WHEN ClassName = 'Economy' THEN 0.05
		WHEN ClassName = 'Regular' THEN 0.07
		ELSE 0.09
	END AS 'Desconto'
FROM
	DimProduct

/*b) Fa�a uma adapta��o no c�digo para que os % de desconto de 5%, 7% e 9% sejam facilmente modificados (dica: utilize vari�veis).*/

DECLARE @desc1 FLOAT, @desc2 FLOAT, @desc3 FLOAT
SET @desc1 = 0.05
SET @desc2 = 0.07
SET @desc3 = 0.09

SELECT
	ProductKey AS 'Chave do produto', 
	ProductName AS 'Nome do produto',
	UnitPrice AS 'Pre�o total',
	CASE
		WHEN ClassName = 'Economy' THEN (UnitPrice - (UnitPrice * @desc1))
		WHEN ClassName = 'Regular' THEN (UnitPrice - (UnitPrice * @desc2))
		ELSE (UnitPrice - (UnitPrice * @desc3))
		END AS 'Pre�o com desconto',
	CASE
		WHEN ClassName = 'Economy' THEN @desc1
		WHEN ClassName = 'Regular' THEN @desc2
		ELSE @desc3
	END AS 'Desconto'
FROM
	DimProduct
