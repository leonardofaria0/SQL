CREATE OR ALTER TRIGGER tgControleRegistro
ON dCliente
INSTEAD OF INSERT
AS
BEGIN

	IF FORMAT(GETDATE(), 'dddd') IN('sábado', 'domingo')
	BEGIN

		RAISERROR('Não é possivel inserir dados da tabela fora o perido de segunda à sexta!', 1, 1)
		ROLLBACK
	
	END
	ELSE
	BEGIN

		INSERT INTO dCliente
		SELECT nome_cliente, genero, data_de_nascimento, cpf FROM inserted

	END

END

SELECT * FROM dCliente