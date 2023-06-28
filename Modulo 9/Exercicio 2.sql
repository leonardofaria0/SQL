/*Para cada declara��o das vari�veis abaixo, aten��o em rela��o ao tipo de dado que dever� ser especificado.*/

/*a) Declare uma vari�vel chamada �produto� e atribua o valor de �Celular�.*/
DECLARE @produto VARCHAR(50)
SET @produto = 'Celular'
--SELECT @produto

/*b) Declare uma vari�vel chamada �quantidade� e atribua o valor de 12.*/
DECLARE @quantidade INT
SET @quantidade = 12
--SELECT @quantidade

/*c) Declare uma vari�vel chamada �preco� e atribua o valor 9.99.*/
DECLARE @preco FLOAT
SET @preco = 9.99
--SELECT @preco

/*d) Declare uma vari�vel chamada �faturamento� e atribua o resultado da multiplica��o entre �quantidade� e �preco�.*/
DECLARE @faturamento FLOAT
SET @faturamento = @quantidade * @preco
--SELECT @faturamento

/*e) Visualize o resultado dessas 4 vari�veis em uma �nica consulta, por meio do SELECT.*/

SELECT @produto AS 'Produto', @quantidade AS 'Quantidade', @preco AS 'Pre�o', @faturamento AS 'Faturamento'