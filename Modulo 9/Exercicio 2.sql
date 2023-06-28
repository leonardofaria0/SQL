/*Para cada declaração das variáveis abaixo, atenção em relação ao tipo de dado que deverá ser especificado.*/

/*a) Declare uma variável chamada ‘produto’ e atribua o valor de ‘Celular’.*/
DECLARE @produto VARCHAR(50)
SET @produto = 'Celular'
--SELECT @produto

/*b) Declare uma variável chamada ‘quantidade’ e atribua o valor de 12.*/
DECLARE @quantidade INT
SET @quantidade = 12
--SELECT @quantidade

/*c) Declare uma variável chamada ‘preco’ e atribua o valor 9.99.*/
DECLARE @preco FLOAT
SET @preco = 9.99
--SELECT @preco

/*d) Declare uma variável chamada ‘faturamento’ e atribua o resultado da multiplicação entre ‘quantidade’ e ‘preco’.*/
DECLARE @faturamento FLOAT
SET @faturamento = @quantidade * @preco
--SELECT @faturamento

/*e) Visualize o resultado dessas 4 variáveis em uma única consulta, por meio do SELECT.*/

SELECT @produto AS 'Produto', @quantidade AS 'Quantidade', @preco AS 'Preço', @faturamento AS 'Faturamento'