
-- INNER JOIN
-- LEFT JOIN
-- RIGHT JOIN
-- CROSS JOIN
-- MULTIPLOS JOIN
-- UNION
-- UNION ALL



-- INNER JOIN >> compara cada linha da tabela A com as linhas da tabela B para encontrar todos os pares de linhas


SELECT*FROM DimProduct

SELECT 
	 DimProduct.ProductKey,
	 DimProduct.ProductName,
	 DimProduct.ProductSubcategoryKey,
	 DimProductSubcategory.ProductSubcategoryName --Buscar o nome da Subcategoria que está em outra tabela
FROM 
	DimProduct
 INNER JOIN 
	DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

-- LEFT JOIN >>Retorna todos os registros da tabela esquerda (tabela A) e os registros correspondentes da tabela direita (tabela B).
SELECT 
	 DimProduct.ProductKey,
	 DimProduct.ProductName,
	 DimProduct.ProductSubcategoryKey,
	 DimProductSubcategory.ProductSubcategoryName --Buscar o nome da Subcategoria que está em outra tabela
FROM 
	DimProduct
 LEFT JOIN
	DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

-- RIGHT JOIN >> Retorna todos os registros da tabel direita (tabela B ) e os registros correspondentes às linhas da tabela esquerda (tabela A).

SELECT 
	 DimProduct.ProductKey,
	 DimProduct.ProductName,
	 DimProduct.ProductSubcategoryKey,
	 DimProductSubcategory.ProductSubcategoryName --Buscar o nome da Subcategoria que está em outra tabela
FROM 
	DimProduct
RIGHT JOIN
	DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

-- CROSS JOIN >> Produto Cartesiano

SELECT 
 DimProduct.ProductName,
 DimProductSubcategory.ProductSubcategoryName
FROM DimProduct CROSS JOIN DimProductSubcategory


--MULTIPLOS JOIN'S (Resultando em uma tabela A com informação da tabela B e tabela C) 

SELECT * FROM DimProduct --tabela A
SELECT * FROM DimProductSubcategory  --tabela B
SELECT * FROM DimProductCategory  --tabela C


SELECT 
	 DimProduct.ProductKey,
	 DimProduct.ProductName,
	 DimProduct.ProductSubcategoryKey,
	 DimProductSubcategory.ProductSubcategoryName,
	 DimProductCategory.ProductCategoryName
FROM
	DimProduct              --tabela A
 LEFT JOIN
	DimProductSubcategory   --tabela B
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
	 LEFT JOIN
		DimProductCategory  --tabela C
			ON DimProductSubcategory.ProductCategoryKey=DimProductCategory.ProductCategoryKey