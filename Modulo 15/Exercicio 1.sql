/*1. Utilize o Loop While para criar um contador que comece em um valor inicial @ValorInicial e termine em um valor final @ValorFinal. Voc� dever� printar na tela a seguinte frase:
�O valor do contador �: � + ___*/

DECLARE @ValorInicial INT, @ValorFinal INT
SET @ValorInicial = 1
SET @ValorFinal = 50

WHILE @ValorInicial <= @ValorFinal
BEGIN
	PRINT 'O valor do contador �: ' + CONVERT(VARCHAR, @Valorinicial)
	SET @ValorInicial += 1
END