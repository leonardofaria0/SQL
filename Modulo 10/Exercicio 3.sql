/*O setor de TI est� criando um sistema para acompanhamento individual de cada funcion�rio da empresa Contoso. Cada funcion�rio receber� um login e senha. O login de cada funcion�rio ser� o ID do e-mail, como no exemplo abaixo:
J� a senha ser� o FirtName + o dia do ano em que o funcion�rio nasceu, em MAI�SCULA. Por exemplo, o funcion�rio com E-mail: mark0@contoso.com e data de nascimento 15/01/1990 dever� ter a seguinte senha:
Login: mark0
Senha: MARK15
O respons�vel pelo TI pediu a sua ajuda para retornar uma tabela contendo as seguintes colunas da tabela DimEmployee: Nome completo (FirstName + LastName), E-mail, ID do e-mail e Senha.
Portanto, fa�a uma consulta � tabela DimProduct e retorne esse resultado.*/

SELECT
	CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
	EmailAddress AS 'E-mail',
	LEFT(EmailAddress, CHARINDEX('@', EmailAddress) -1) AS 'Login',
	UPPER(Firstname + DATENAME(DAYOFYEAR, BirthDate)) AS 'Senha'
FROM
	DimEmployee

select * from DimEmployee