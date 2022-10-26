
--COMANDO DE AGREGAÇÃO
--SUM 
--COUNT

--SUM
SELECT
	SUM(SalesAmount) as "Total de Vendas"
FROM FactSales



--COUNT
SELECT
	COUNT(SalesAmount) as "Qtd de Vendas"
FROM FactSales

