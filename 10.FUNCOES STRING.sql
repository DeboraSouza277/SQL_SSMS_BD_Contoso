-- LEN - retorna a quantidade de caracter
-- DATALENGHT - retornar q quatidade de caracteres at� os espa�os
-- CONCAT 
-- LEFT
-- RIGHT

--LEN
SELECT LEN('Debora Souza    ')

-- DATALENGHT
SELECT DATALENGTH('Debora Souza    ')

--CONCAT

SELECT 
	FirstName,
	LastName,
	CONCAT(FirstName,' ',LastName) AS 'Nome Completo'
	
	FROM DimCustomer


-- LEFT
SELECT LEFT('Debora Souza', 6)

-- RIGHT
SELECT RIGHT('Debora Souza', 6)


