/*1. Declare 4 vari�veis inteiras. Atribua os seguintes valores a elas:*/
DECLARE @valor1 INT, @valor2 INT, @valor3 INT, @valor4 INT
SET @valor1 = 10
SET @valor2 = 5
SET @valor3 = 34
SET @valor4 = 7
/*a) Crie uma nova vari�vel para armazenar o resultado da soma entre valor1 e valor2. Chame essa vari�vel de soma.*/
DECLARE @SOMA INT
SET @SOMA = @valor1 + @valor2
SELECT @SOMA

/*b) Crie uma nova vari�vel para armazenar o resultado da subtra��o entre valor3 e valor 4. Chame essa vari�vel de subtracao.*/
DECLARE @subtracao INT
SET @subtracao = @valor3 - @valor4
SELECT @subtracao

/*c) Crie uma nova vari�vel para armazenar o resultado da multiplica��o entre o valor 1 e o valor4. Chame essa vari�vel de multiplicacao.*/
DECLARE @multiplicacao INT
SET @multiplicacao = @valor1 * @valor4
SELECT @multiplicacao

/*d) Crie uma nova vari�vel para armazenar o resultado da divis�o do valor3 pelo valor4. Chame essa vari�vel de divisao. Obs: O resultado dever� estar em decimal, e n�o em inteiro.*/
DECLARE @divisao FLOAT
SET @divisao = @valor3 / @valor4
SELECT @divisao

/*e) Arredonde o resultado da letra d) para 2 casas decimais.*/
SELECT ROUND(@divisao, 2)
