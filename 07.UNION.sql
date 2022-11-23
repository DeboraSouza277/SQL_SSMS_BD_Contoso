
--UNION
--UNION ALL


-- UNION Executa o equivalente a um SELECT DISTINCT no result set final. Em outras palavras, ele combina o resultado de execução das duas queries e então executa um SELECT DISTINCT a fim de eliminar as linhas duplicadas. Este processo é executado mesmo que não hajam registros duplicados.
--Considerando que a tabelas são distintas com as mesmas colunas
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

--UNION ALL tem a mesma funcionalidade do UNION, porém, não executa o SELECT DISTINCT no result set final e apresenta todas as linhas, inclusive as linhas duplicadas.

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


