/*Voc� precisar� fazer uma an�lise da quantidade de funcion�rios das lojas registradas na empresa. O seu gerente te pediu os seguintes n�meros e informa��es:
a) Quantos funcion�rios tem a loja com mais funcion�rios?
b) Qual � o nome dessa loja?
c) Quantos funcion�rios tem a loja com menos funcion�rios?
d) Qual � o nome dessa loja?*/

SELECT-- * FROM DimStore
	MIN(EmployeeCount),
	MAX(EmployeeCount)
FROM
	DimStore

-- Para saber o nome da loja, basta filtrar a coluna do nome da loja e quantidade de funcionarios e depois ordenar por ASC e DESC