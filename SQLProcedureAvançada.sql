CREATE OR ALTER PROCEDURE prAdicionandoCliente(@gerente VARCHAR(MAX), @cliente VARCHAR(MAX), @valor FLOAT)
AS
BEGIN

	DECLARE @vIdGerente INT
	DECLARE @vIdCliente INT

	SELECT
		@vIdGerente = id_gerente
	FROM dGerente
	WHERE nome_gerente = @gerente

	SELECT
		@vIdCliente = id_cliente
	FROM dCliente
	WHERE nome_cliente = @cliente

	INSERT INTO fContratos (data_assinatura, id_cliente, id_gerente, valor_contrato) VALUES (
	GETDATE(), @vIdCliente, @vIdGerente, @valor
	)

	PRINT 'Contrato registrado com sucesso!'

END

select * from fContratos

EXECUTE prAdicionandoCliente @gerente='Lucas Sampaio', @cliente='Gustavo Barbosa', @valor=5000

SELECT * FROM dCliente
SELECT * FROM dGerente
SELECT * FROM fContratos