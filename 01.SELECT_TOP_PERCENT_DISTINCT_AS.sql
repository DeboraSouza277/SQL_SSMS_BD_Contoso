
-- SELECT 
-- SELECT TOP (N) e TOP(N) PERCENT
-- SELECT DISTINCT
-- AS


-- SELECT 
SELECT 
	StoreKey, 
	StoreName, 
	StorePhone 
FROM 
	DimStore

-- SELECT TOP (N) e TOP(N) PERCENT

SELECT TOP (10) * FROM DimProduct

SELECT TOP (10) PERCENT * FROM DimProduct


-- SELECT DISTINCT

SELECT DISTINCT
	DepartmentName
FROM
	DimEmployee

-- AS
SELECT
	CustomerKey AS Chave,
	FirstName AS 'Primeiro Nome',
	EmailAddress AS Email,
	BirthDate AS 'Data Aniversário'
FROM
	DimCustomer
