--FUNÇÃO DE PRIMEIRO NOME

CREATE OR ALTER FUNCTION fnPrimeiroNome(@nomeCompleto AS VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN

	DECLARE @posicao INT
	DECLARE @resposta VARCHAR(MAX)

	SET @posicao = CHARINDEX(' ', @nomeCompleto)

	IF @posicao = 0
		SET @resposta = @nomeCompleto
	ELSE
		SET @resposta = LEFT(@nomeCompleto, @posicao -1)

	RETURN @resposta

END

SELECT
	[dbo].[fnPrimeiroNome](nome_cliente) AS 'Primeiro Nome'
FROM
	dCliente


--FUNÇÃO DE DATA

CREATE OR ALTER FUNCTION fnDataCompleta(@data AS DATE)
RETURNS VARCHAR(MAX)
AS
BEGIN

	RETURN DATENAME(DW, @data) + ', ' +
			DATENAME(D, @data) + ' de ' +
			DATENAME(M, @data) + ' de ' +
			DATENAME(YY, @data) + ' - ' +
			CASE
				WHEN MONTH(@data) <= 6 THEN
					'1° Semestre'
				ELSE
				'2° Semestre'
			END
END