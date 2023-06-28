/*1. a) A partir da tabela DimProduct, crie uma View contendo as informações de ProductName, ColorName, UnitPrice e UnitCost, da tabela DimProduct. Chame essa View de vwProdutos.*/
GO
CREATE VIEW vwProdutos AS
SELECT
	ProductName AS 'Nome Produto',
	ColorName AS 'Cor',
	UnitPrice AS 'Preço',
	UnitCost AS 'Custo'
FROM
	DimProduct
GO
/*b) A partir da tabela DimEmployee, crie uma View mostrando FirstName, BirthDate, DepartmentName. Chame essa View de vwFuncionarios.*/
GO
CREATE VIEW vwFuncionarios AS
SELECT
	FirstName 'Primeiro Nome', 
	BirthDate 'Data de Nascimento', 
	DepartmentName 'Nome departamento'
FROM
	DimEmployee
GO
/*c) A partir da tabela DimStore, crie uma View mostrando StoreKey, StoreName e OpenDate. Chame essa View de vwLojas.*/
GO
CREATE VIEW vwLojas AS
SELECT
	StoreKey AS 'ID Loja',
	StoreName AS 'Nome Loja',
	OpenDate AS 'Data de abertura'
FROM
	DimStore
GO