/*A área de RH está com uma nova ação para a empresa, e para isso precisa saber a quantidade total de funcionários do sexo Masculino e do sexo Feminino.
a) Descubra essas duas informações utilizando o SQL.
b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as seguintes informações de cada um deles: Nome, E-mail, Data de Contratação.*/

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
	HireDate AS 'Data de contratação'
FROM
	DimEmployee
WHERE Gender = 'M' --Para saber o feminino, basta alterar o F
ORDER BY HireDate