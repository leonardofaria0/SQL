/*2. Você deverá criar uma estrutura de repetição que printe na tela a quantidade de contratações para cada ano, desde 1996 até 2003. A informação de data de contratação encontra-se na coluna HireDate da tabela DimEmployee. Utilize o formato:
X contratações em 1996
Y contratações em 1997
Z contratações em 1998
...
...
N contratações em 2003
Obs: a coluna HireDate contém a data completa (dd/mm/aaaa). Lembrando que você deverá printar a quantidade de contratações por ano.*/

SELECT * FROM DimEmployee

DECLARE @varAnoInicial INT = 1996
DECLARE @varAnoFinal INT = 2003

WHILE  @varAnoInicial <= @varAnoFinal

BEGIN
DECLARE @QtdFuncionarios INT = (SELECT COUNT(*) FROM DimEmployee WHERE
YEAR(HireDate) = @varAnoInicial)

PRINT CONCAT(@QtdFuncionarios, ' contratações em: ', @varAnoInicial)
SET @varAnoInicial += 1

END

