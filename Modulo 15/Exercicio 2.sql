/*2. Voc� dever� criar uma estrutura de repeti��o que printe na tela a quantidade de contrata��es para cada ano, desde 1996 at� 2003. A informa��o de data de contrata��o encontra-se na coluna HireDate da tabela DimEmployee. Utilize o formato:
X contrata��es em 1996
Y contrata��es em 1997
Z contrata��es em 1998
...
...
N contrata��es em 2003
Obs: a coluna HireDate cont�m a data completa (dd/mm/aaaa). Lembrando que voc� dever� printar a quantidade de contrata��es por ano.*/

SELECT * FROM DimEmployee

DECLARE @varAnoInicial INT = 1996
DECLARE @varAnoFinal INT = 2003

WHILE  @varAnoInicial <= @varAnoFinal

BEGIN
DECLARE @QtdFuncionarios INT = (SELECT COUNT(*) FROM DimEmployee WHERE
YEAR(HireDate) = @varAnoInicial)

PRINT CONCAT(@QtdFuncionarios, ' contrata��es em: ', @varAnoInicial)
SET @varAnoInicial += 1

END

