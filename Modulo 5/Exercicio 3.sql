/*Você precisará fazer uma análise da quantidade de funcionários das lojas registradas na empresa. O seu gerente te pediu os seguintes números e informações:
a) Quantos funcionários tem a loja com mais funcionários?
b) Qual é o nome dessa loja?
c) Quantos funcionários tem a loja com menos funcionários?
d) Qual é o nome dessa loja?*/

SELECT-- * FROM DimStore
	MIN(EmployeeCount),
	MAX(EmployeeCount)
FROM
	DimStore

-- Para saber o nome da loja, basta filtrar a coluna do nome da loja e quantidade de funcionarios e depois ordenar por ASC e DESC