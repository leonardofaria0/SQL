/*2. Crie uma View contendo as informações de Nome Completo (FirstName + LastName), Gênero (por extenso), E-mail e Renda Anual (formatada com R$). Utilize a tabela DimCustomer. Chame essa View de vwClientes.*/
CREATE VIEW vwCliente as
SELECT
	(FirstName + ' ' + LastName) AS 'Nome Completo',
	CASE
		WHEN Gender = 'M' THEN 'Masculino'
		ELSE 'Feminino'
	END AS 'Genero',
	EmailAddress AS 'E-mail',
	FORMAT(YearlyIncome, 'C') AS 'Renda Anual'
FROM
	DimCustomer
WHERE Gender IS NOT NULL