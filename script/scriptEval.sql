-- LOG 
-- Comptable mike

-- select autoriser 
select *
from OrderHeader
where SalesOrderID = 43659
-- select refuser 
select *
from Person

-- insert refuser
insert into Product(CertifId, FormationId, Description, Price) values(70480,2,'création d''une application','150,00')

-- update refuser
update OrderHeader
set Status = 0
where SalesOrderID = 43659

-- delete refuser
delete from OrderHeader
where SalesOrderID = 43659






-- RH vidur

-- select autoriser 
select *
from SalesPerson
where BusinessEntityID = 290
-- select refuser 
select *
from OrderHeader

-- insert autoriser
insert into SalesPerson(BusinessEntityID ,TerritoryID, SalesQuota, Bonus, CommissionPct, SalesYTD, SalesLastYear) values(291, 7, 200100, 600, 0.015, 3000000.3000, 2362368.6854)
-- insert refuser
insert into Product(CertifId, FormationId, Description, Price) values(70480,2,'création d''une application','150,00')

-- update autoriser 
update SalesPerson
set TerritoryID = 6
where BusinessEntityID = 291
-- update refuser
update Person
set Title = 'Mr'
where BusinessEntityID = 1

-- delecte autoriser 
delete from SalesPerson
where BusinessEntityID = 291
-- delecte refuser 
delete from Person
where BusinessEntityID = 1







-- VUE
select * 
from NbDevisBySalePerson

select *
from ListDevis

select *
from NbPersonNoPayByFormation








-- TRIGGER
select *
from OrderHeader
where SalesOrderID = 43659

update OrderHeader
set Comment = 'Achat'
where SalesOrderID = 43659

select *
from OrderHeader
where SalesOrderID = 43659






-- PROCEDURE 
exec Pro_BenefCertif @idCertif = 70480

exec Pro_CACertif @idCertif = 70480

select *
from Product 
where ProductID = 1

exec Pro_UpdatePriceProduct @idProduct = 1,@newPrice = 100.00

select *
from Product 
where ProductID = 1