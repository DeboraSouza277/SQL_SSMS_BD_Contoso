--CAST - Função para converter em algum tipo de dado para outro especifico
--Format - Formatar valores
--ROUND - Retorna um valor decimal, arredondando de acordo com o número de casas decimais especificadas na função. 
--ROUND (TRUNCAR) - 3º parâmetro da função, que, quando informado o valor 0, vai realizar o truncamento dos dados ao invés de arredondar, ou seja, 10.999 com 2 casas decimais ficaria 10.99.
--FLOOR -Retorna um número inteiro, arredondado sempre para baixo, ou seja, retorna a parte inteira do número decimal informado
--CEILING -Retorna um valor inteiro, arredondando sempre para cima, ou seja, a parte inteira + 1 do número decimal informado (caso o valor decimal seja > 0)



--CAST
SELECT CAST( 19.23 AS INT)

--FORMAT
--NUMERO
SELECT FORMAT (3000,'G')
SELECT FORMAT (3000,'N') --Com separador de milhar 



--DATA ( FORMAT + CAST)
SELECT FORMAT (CAST('27/07/2022' AS DATETIME), 'dd/MM/yyyy')

--ROUND

SELECT ROUND(15.2526696699,2)


--ROUND (TRUNCAR)

SELECT ROUND(15.2526696699,3,1)



--FLOOR

SELECT FLOOR(15.2526696699)


--CEILING 

SELECT CEILING (15.2526696699)
