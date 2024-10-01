create view TotalDevis
as 
select P.BusinessEntityID, FirstName, LastName, count(OH.SalesOrderID) as totalDevis
from SalesPerson SP 
inner join OrderHeader OH on OH.SalesPersonID = SP.BusinessEntityID
inner join Person P on P.BusinessEntityID = SP.BusinessEntityID
group by P.BusinessEntityID, FirstName, LastName 