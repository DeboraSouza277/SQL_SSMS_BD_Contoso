

--Query para criar DimProduct

CREATE VIEW as 
SELECT 
ProductKey,
ProductLabel,
ProductName,
ProductCategoryDescription,
P.ProductSubcategoryKey,
PS.ProductSubcategoryName,
Manufacturer,
BrandName,
ClassName,
StyleName,
Weight,
UnitCost,
UnitPrice,
Status
 FROM DimProduct P
left join DimProductSubcategory PS ON  PS.ProductSubcategoryKey = P.ProductSubcategoryKey
left join DimProductCategory PC ON  PC.ProductCategoryKey = PS.ProductCategoryKey

SELECT * FROM DimProductSubcategory