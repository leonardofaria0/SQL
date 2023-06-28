/*4. Novos dados deverão ser adicionados nas tabelas dCliente, dGerente e fContratos. Fique livre
para adicionar uma nova linha em cada tabela contendo, respectivamente,
(1) um novo cliente (id cliente, nome e data de nascimento)
(2) um novo gerente (id gerente, nome, data de contratação e salário)
(3) um novo contrato (id, data assinatura, id cliente, id gerente, valor do contrato)*/

SELECT * FROM fContratos

INSERT INTO dCLiente (ID_Cliente, Nome_CLiente, Data_de_Nascimento)
VALUES
	(11, 'Leonardo Faria', '15/11/2002')

INSERT INTO dGerente (ID_Gerente, Nome_Gerente, Data_de_Contratacao, Salario)
VALUES
	(5, 'Fabio Palhares', '01/04/1987', 22478)

INSERT INTO fContratos (ID_Contrato, Data_Assinatura, ID_Cliente, ID_Gerente, Valor_do_Contrato)
VALUES
	(11, '27/11/2021', 7, 5, 2231)