/*1. Declare 4 variáveis inteiras. Atribua os seguintes valores a elas:*/
DECLARE @valor1 INT, @valor2 INT, @valor3 INT, @valor4 INT
SET @valor1 = 10
SET @valor2 = 5
SET @valor3 = 34
SET @valor4 = 7
/*a) Crie uma nova variável para armazenar o resultado da soma entre valor1 e valor2. Chame essa variável de soma.*/
DECLARE @SOMA INT
SET @SOMA = @valor1 + @valor2
SELECT @SOMA

/*b) Crie uma nova variável para armazenar o resultado da subtração entre valor3 e valor 4. Chame essa variável de subtracao.*/
DECLARE @subtracao INT
SET @subtracao = @valor3 - @valor4
SELECT @subtracao

/*c) Crie uma nova variável para armazenar o resultado da multiplicação entre o valor 1 e o valor4. Chame essa variável de multiplicacao.*/
DECLARE @multiplicacao INT
SET @multiplicacao = @valor1 * @valor4
SELECT @multiplicacao

/*d) Crie uma nova variável para armazenar o resultado da divisão do valor3 pelo valor4. Chame essa variável de divisao. Obs: O resultado deverá estar em decimal, e não em inteiro.*/
DECLARE @divisao FLOAT
SET @divisao = @valor3 / @valor4
SELECT @divisao

/*e) Arredonde o resultado da letra d) para 2 casas decimais.*/
SELECT ROUND(@divisao, 2)
