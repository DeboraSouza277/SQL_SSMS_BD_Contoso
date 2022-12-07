--VARIAVEL

--Declate com uma variável

DECLARE @Criancas INT =3

SELECT 
	CustomerKey,
	FirstName,
	NumberChildrenAtHome
FROM DimCustomer
WHERE NumberChildrenAtHome = @Criancas

--Declate com mais variáveis

DECLARE @Crianca2 INT = 3,
		@Genero VARCHAR(1) = 'F'

SELECT 
*
FROM DimCustomer
WHERE NumberChildrenAtHome = @Crianca2 AND Gender = @Genero


-- Inserir o resultad de um select em uma variável


DECLARE @LojasOff INT 
SET @LojasOff = (
SELECT COUNT(*) 
FROM DimStore
WHERE Status = 'Off')

select @LojasOff as 'Lojas_Off'



-- Inserir uma valor em uma variavel e visualizar junto a outra tabela 

DECLARE @ProdutoMaisVendido INT

SELECT TOP (1) @ProdutoMaisVendido = ProductKey
FROM FactSales
ORDER BY SalesQuantity DESC

--SELECT @ProdutoMaisVendido

SELECT ProductKey,ProductName
FROM DimProduct
WHERE ProductKey = @ProdutoMaisVendido -- SELECIONA O PRODUTO MAIS VENDIDO JUNTO A OUTRA TABELA

