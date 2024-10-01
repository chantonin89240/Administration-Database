--create view CertifTop 
--as 
select C.CertifID, sum(OrderQty) as totalDemande
from OrderDetail OD 
inner join Product P on P.ProductID = OD.ProductID
inner join Certification C on C.CertifID = P.CertifID
group by C.CertifID

select CertifId, totalDemande
from TopCertif
where totalDemande = (select MAX(totalDemande)
from TopCertif)


--select C.CertifID, avg(FO.PersonLimit)
--from Formation FO
--inner join Product P on P.FormationID = FO.FormationID
--inner join Certification C on C.CertifID = P.CertifID
--group by C.CertifID