--Vari�veis

--Declate com uma vari�vel

DECLARE @Criancas INT =3

SELECT 
	CustomerKey,
	FirstName,
	NumberChildrenAtHome
FROM DimCustomer
WHERE NumberChildrenAtHome = @Criancas

--Declate com mais vari�veis

DECLARE @Crianca2 INT = 3,
		@Genero VARCHAR(1) = 'F'

SELECT 
*
FROM DimCustomer
WHERE NumberChildrenAtHome = @Crianca2 AND Gender = @Genero


-- Inserir o resultad de um select em uma vari�vel


DECLARE @LojasOff INT 
SET @LojasOff = (
SELECT COUNT(*) 
FROM DimStore
WHERE Status = 'Off')

select @LojasOff as 'Lojas_Off'