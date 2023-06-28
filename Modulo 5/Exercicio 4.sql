/*A �rea de RH est� com uma nova a��o para a empresa, e para isso precisa saber a quantidade total de funcion�rios do sexo Masculino e do sexo Feminino.
a) Descubra essas duas informa��es utilizando o SQL.
b) O funcion�rio e a funcion�ria mais antigos receber�o uma homenagem. Descubra as seguintes informa��es de cada um deles: Nome, E-mail, Data de Contrata��o.*/

SELECT * FROM DimEmployee

SELECT
	COUNT(FirstName)
FROM
	DimEmployee
WHERE Gender = 'F' -- Ou pode substituir por 'M' para saber a quantidade Masculina.

--Para a letra B -->

SELECT
	TOP (1) FirstName AS 'Primeiro Nome',
	EmailAddress AS 'E-mail',
	HireDate AS 'Data de contrata��o'
FROM
	DimEmployee
WHERE Gender = 'M' --Para saber o feminino, basta alterar o F
ORDER BY HireDate