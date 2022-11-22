--GROUP BY 
--   GROUP BY + HAVING (filtra após os dados agrupado, no lugar de where)

--GROUP BY 

SELECT
StoreKey,
	SUM(SalesQuantity) as 'Quantidade Vendida',
	SUM(ReturnQuantity) as 'Quantidade Devovida'
FROM 
	FactSales
GROUP BY StoreKey



--GROUP BY + HAVING

SELECT
	ProductKey,
	SUM(SalesAmount)
FROM FactSales
GROUP BY ProductKey
HAVING SUM(SalesAmount) >= 1000
ORDER BY SUM(SalesAmount) DESC


--Diferença entre Where e Having

SELECT
	Gender As 'Sexo',
	Occupation,
	COUNT(CustomerKey) as 'Total de Clientes'
FROM
	DimCustomer
WHERE Gender = 'F'                 --Filtra antes de agrupar
GROUP BY Occupation, Gender
HAVING Occupation = 'Manual'       --Filtra depois de agrupar
