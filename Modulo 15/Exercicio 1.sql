/*1. Utilize o Loop While para criar um contador que comece em um valor inicial @ValorInicial e termine em um valor final @ValorFinal. Você deverá printar na tela a seguinte frase:
“O valor do contador é: “ + ___*/

DECLARE @ValorInicial INT, @ValorFinal INT
SET @ValorInicial = 1
SET @ValorFinal = 50

WHILE @ValorInicial <= @ValorFinal
BEGIN
	PRINT 'O valor do contador é: ' + CONVERT(VARCHAR, @Valorinicial)
	SET @ValorInicial += 1
END