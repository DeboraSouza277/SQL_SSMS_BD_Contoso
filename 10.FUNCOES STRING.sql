-- LEN - retorna a quantidade de caracter
-- DATALENGHT - retornar q quatidade de caracteres até os espaços
-- CONCAT 
-- LEFT
-- RIGHT
--REPLACE - Trocar textos

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


--REPLACE

SELECT REPLACE('Debora Souza', 'Souza' , 'SQL')