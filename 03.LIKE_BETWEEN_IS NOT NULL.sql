--LIKE
--BETWEEN
--IS NULL...NOT NULL

--LIKE auxiliar na sele��o de dados espec�ficos em uma tabela, como palavras iniciadas ou terminadas com uma letra espec�fica. % no inicio ou no final de acordo a posi��o da palavra.

SELECT*FROM DimProduct
WHERE ProductName LIKE '%MP3 Player%'

--BETWEEN


SELECT*FROM DimProduct
WHERE UnitPrice BETWEEN 50 AND 100 

SELECT*FROM DimProduct
WHERE UnitPrice NOT BETWEEN 50 AND 100

SELECT * FROM DimEmployee 
WHERE HireDate BETWEEN '2000-01-01' AND '2000-12-31'



--IS NULL ...NOT NULL

SELECT * FROM DimEmployee 
WHERE MiddleName IS NOT NULL