CREATE OR ALTER PROCEDURE prListaClientes(@gen VARCHAR(MAX), @ano INT)
AS
BEGIN

	SELECT
		Nome_cliente,
		genero,
		data_de_nascimento,
		cpf
	FROM
		dCliente	
	WHERE genero = @gen AND YEAR(data_de_nascimento) = @ano

END

EXECUTE prListaClientes 'M', 1989