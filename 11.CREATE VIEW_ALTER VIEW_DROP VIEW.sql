--CREATE VIEW
--GO- Serve para delimitar o que a query deve demarcar para criar a view.
--USE - Serve para orientar qual o banco de dados eu quero usar por comando
--ALTER VIEW
--DROP VIEW



--CREATE VIEW
--GO

CREATE VIEW vwClientes AS
SELECT 
  FirstName AS 'Nome',
  Gender AS 'Idade',
  TotalChildren AS 'Total de Filhos'
FROM DimCustomer

GO
--Consultando a view
SELECT *FROM vwClientes



--ALTER VIEW

GO
ALTER VIEW vwClientes AS
SELECT 
  FirstName AS 'Nome',
  BirthDate AS 'Data de Nascimento',
  Gender AS 'Sexo',
  TotalChildren AS 'Total de Filhos'
FROM DimCustomer
WHERE Gender = 'M'
GO



--DROP VIEW

DROP VIEW vwClientes