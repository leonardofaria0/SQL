CREATE OR ALTER TRIGGER tgClienteAlterado
ON dCliente
AFTER INSERT, UPDATE, DELETE
AS
BEGIN

	IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
		PRINT 'Dados foram atualizados na tabela!'
	ELSE IF EXISTS (SELECT * FROM inserted)
		PRINT 'Dados foram inseridos na tabela!'
	ELSE IF EXISTS (SELECT * FROM deleted)
		PRINT 'Dados foram excluídos da tabela!'

END

INSERT INTO dCliente VALUES('Leonardo Faria', 'M', '15/11/2002', '526.847.866-25')

DELETE FROM dCliente WHERE id_cliente = 11
UPDATE dCliente
SET cpf = '179.854.752-23'
WHERE id_cliente = 10

SELECT * FROM dCliente