
--UNION
--UNION ALL


-- UNION Executa o equivalente a um SELECT DISTINCT no result set final. Em outras palavras, ele combina o resultado de execu��o das duas queries e ent�o executa um SELECT DISTINCT a fim de eliminar as linhas duplicadas. Este processo � executado mesmo que n�o hajam registros duplicados.
--Considerando que a tabelas s�o distintas com as mesmas colunas
SELECT
FirstName,
MaritalStatus
FROM DimCustomer
WHERE MaritalStatus = 'S'
UNION
SELECT
FirstName,
MaritalStatus
FROM DimCustomer
WHERE MaritalStatus = 'M'

--UNION ALL tem a mesma funcionalidade do UNION, por�m, n�o executa o SELECT DISTINCT no result set final e apresenta todas as linhas, inclusive as linhas duplicadas.

SELECT
FirstName,
MaritalStatus
FROM DimCustomer
WHERE MaritalStatus = 'S'
UNION ALL
SELECT
FirstName,
MaritalStatus
FROM DimCustomer
WHERE MaritalStatus = 'M'


