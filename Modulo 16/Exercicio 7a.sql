/*Neste desafio, você terá que criar suas próprias tabelas e views para conseguir resolver os exercícios 7 e 8. Os próximos exercícios envolverão análises de novos clientes. Para isso, será necessário criar uma nova tabela e uma nova view.
Abaixo, temos um passo a passo para resolver o problema por partes.
PASSO 1: Crie um novo banco de dados chamado Desafio e selecione esse banco de dados criado.
PASSO 2: Crie uma tabela de datas entre o dia 1 de janeiro do ano com a compra (DateFirstPurchase) mais antiga e o dia 31 de dezembro do ano com a compra mais recente.
Obs1: Chame essa tabela de Calendario.
Obs2: A princípio, essa tabela deve conter apenas 1 coluna, chamada data e do tipo DATE.
PASSO 3: Crie colunas auxiliares na tabela Calendario chamadas: Ano, Mes, Dia, AnoMes e NomeMes. Todas do tipo INT.
PASSO 4: Adicione na tabela os valores de Ano, Mês, Dia, AnoMes e NomeMes (nome do mês em português). Dica: utilize a instrução CASE para verificar o mês e retornar o nome certo.
PASSO 5: Crie a View vwNovosClientes, que deve ter as colunas mostradas abaixo.*/

--CREATE DATABASE Desafio
--USE Desafio

CREATE TABLE Calendario (
	data DATE
)

DECLARE @varAnoInicial INT = YEAR((SELECT MIN(DateFirstPurchase) FROM ContosoRetailDW.dbo.DimCustomer))
DECLARE @varAnoFinal INT = YEAR((SELECT MAX(DateFirstPurchase) FROM ContosoRetailDW.dbo.DimCustomer))
DECLARE @varDataInicial DATE = DATEFROMPARTS(@varAnoInicial, 1, 1)
DECLARE @varDataFinal DATE = DATEFROMPARTS(@varAnoFinal, 12, 31)
WHILE @varDataInicial <= @varDataFinal
BEGIN
INSERT INTO Calendario(data) VALUES(@varDataInicial)
SET @varDataInicial = DATEADD(DAY, 1, @varDataInicial)
END
SELECT * FROM Calendario

ALTER TABLE Calendario
ADD Ano INT,
Mes INT,
Dia INT,
AnoMes INT,
NomeMes VARCHAR(50)

UPDATE Calendario SET Ano = YEAR(data)
UPDATE Calendario SET Mes = MONTH(data)
UPDATE Calendario SET Dia = DAY(data)
UPDATE Calendario SET AnoMes = CONCAT(YEAR(data), FORMAT(MONTH(data), '00'))
UPDATE Calendario SET NomeMes =
CASE
WHEN MONTH(data) = 1 THEN 'Janeiro'
WHEN MONTH(data) = 2 THEN 'Fevereiro'
WHEN MONTH(data) = 3 THEN 'Março'
WHEN MONTH(data) = 4 THEN 'Abril'
WHEN MONTH(data) = 5 THEN 'Maio'
WHEN MONTH(data) = 6 THEN 'Junho'
WHEN MONTH(data) = 7 THEN 'Julho'
WHEN MONTH(data) = 8 THEN 'Agosto'
WHEN MONTH(data) = 9 THEN 'Setembro'
WHEN MONTH(data) = 10 THEN 'Outubro'
WHEN MONTH(data) = 11 THEN 'Novembro'
WHEN MONTH(data) = 12 THEN 'Dezembro'
END

CREATE VIEW vwNovosClientes AS
SELECT
ROW_NUMBER() OVER(ORDER BY AnoMes) AS 'ID',
Ano,
NomeMes,
COUNT(DimCustomer.DateFirstPurchase) AS 'Novos_Clientes'
FROM Calendario
LEFT JOIN ContosoRetailDW.dbo.DimCustomer
ON Calendario.data = DimCustomer.DateFirstPurchase
GROUP BY Ano, NomeMes, AnoMes
SELECT * FROM vwNovosClientes