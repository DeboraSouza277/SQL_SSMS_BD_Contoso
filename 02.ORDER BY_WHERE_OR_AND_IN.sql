-- ORDENANDO E FILTRANDO DADOS 

--ORDER BY
--WHERE..
--OR AND IN



--ORDER BY

SELECT TOP (10)
	ProductName as Produto,
	UnitCost AS Preço,
	Weight AS Peso
FROM 
	DimProduct
ORDER BY
 UnitCost DESC, Weight DESC

--WHERE..LIKE
--WHERE FILTRANDO NUMERO
 SELECT 
	ProductName,
	UnitPrice
FROM 
	DimProduct
WHERE 
	UnitPrice >=3000

--WHERE FILTRANDO TEXTO

 SELECT 
	ProductName,
	UnitPrice,
	BrandName
FROM 
	DimProduct
WHERE 
	BrandName='Contoso'

--WHERE FILTRANDO DATA

SELECT*FROM 
DimCustomer
WHERE BirthDate >='1966-04-08'
ORDER BY BirthDate 


 --WHERE ...AND , OR e NOT
 SELECT * FROM DimProduct
WHERE 
BrandName = 'Contoso' and 
ColorName = 'Red' and 
UnitPrice >=2000


SELECT * FROM DimProduct
WHERE
BrandName ='Litware' or 
BrandName='Fabrikam' or
BrandName='Black'

SELECT * FROM DimSalesTerritory
WHERE SalesTerritoryGroup = 'Europe' and
Not SalesTerritoryCountry = 'Italy'

SELECT * FROM DimProduct
WHERE (ColorName ='Black' or ColorName = 'Red') and  BrandName = 'Fabrikam'

SELECT * FROM DimProduct
WHERE ColorName IN ( 'Silver', 'Blue')