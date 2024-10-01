-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE BenefSale 
	-- Add the parameters for the stored procedure here
	@idSale int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @CA decimal
	set @CA = dbo.Fun_CASale(@idSale)
    -- Insert statements for procedure here
	select @CA - sum(salaireIntervention) as total
	from Formateur FE
	inner join intervention I on I.FormateurID = FE.FormateurID
	inner join Formation FO on FO.FormationID = I.FormationID
	inner join Product P on P.FormationID = FO.FormationID
	inner join OrderDetail OD on OD.ProductID = P.ProductID
	inner join OrderHeader OH on OH.SalesOrderID = OD.OrderID
	inner join SalesPerson S on S.BusinessEntityID = OH.SalesPersonID
	where S.BusinessEntityID = @idSale
END
GO
