create view ListDevis as
select SalesOrderID, OrderDate as dateDebut, DueDate as dateFin, TotalDue
from OrderHeader OH
where status != 5