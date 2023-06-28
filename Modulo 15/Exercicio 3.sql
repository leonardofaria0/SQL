/*3. Utilize um Loop While para criar uma tabela chamada Calendario, contendo uma coluna que comece com a data 01/01/2021 e vá até 31/12/2021.*/

CREATE TABLE Calendario (DATA DATE)

DECLARE @DataInicio DATE
DECLARE @DataFim DATE
DECLARE @DataAux DATE
SET @DataInicio = '01/01/2021'
SET @DataFim = '31/12/2021'
SET @DataAux = @DataInicio
WHILE @DataAux <= @DataFim
BEGIN
INSERT INTO Calendario (data) VALUES (@DataAux)
SET @DataAux = DATEADD(DAY, 1, @DataAux)
END
SELECT * FROM Calendario