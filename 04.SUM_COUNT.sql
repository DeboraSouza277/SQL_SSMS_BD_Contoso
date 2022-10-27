
--FUNÇÕES DE AGREGAÇÃO
--SUM 
--COUNT
--MIN E MAX
--AVG

--SUM
SELECT
	SUM(SalesAmount) as "Total de Vendas"
FROM FactSales



--COUNT
SELECT
	COUNT(SalesAmount) as "Qtd de Vendas"
FROM FactSales


--MIN E MAX

SELECT 
MAX (UnitCost) AS 'CUSTO MAXIMO',
MIN (UnitCost) AS 'CUSTO MINIMO'
FROM
DimProduct


SELECT 
MIN (UnitCost)
FROM
DimProduct


--AVG
SELECT 
AVG (UnitCost) AS MÉDIA
FROM
DimProduct