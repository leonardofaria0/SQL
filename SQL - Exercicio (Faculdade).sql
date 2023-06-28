CREATE TABLE Aluno(
	ID_Aluno INT,
	ID_Disciplina INT,
	Nome_Aluno VARCHAR(50),
	CPF_Aluno VARCHAR(14),
	Data_Matricula DATE,
	Email VARCHAR(50),
	Telefone VARCHAR(50),
	Endereco VARCHAR(50),
	Cidade VARCHAR(50),
	Sigla_Estado VARCHAR(2)
)

INSERT INTO Aluno
VALUES
(1, 3, 'Leonardo Faria', CONVERT(VARCHAR(11),17285686689), '15/11/2002', 'leonardo.faria@gmail.com', '(31) 99922-1786', 'Rua Latuque, 149', 'Nova Lima', 'MG')

select * from Aluno


CREATE TABLE Professor(
	ID_Professor INT,
	ID_Disciplina INT,
	Nome_Professor VARCHAR(50),
	CPF_Professor VARCHAR(14),
	Email VARCHAR(50),
	Telefone VARCHAR(50),
	Endereco VARCHAR(50),
	Cidade VARCHAR(50),
	Sigla_Estado VARCHAR(2)
)