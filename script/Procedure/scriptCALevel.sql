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
CREATE PROCEDURE Pro_CALevel
	-- Add the parameters for the stored procedure here
	@idLevel int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select SUM(OH.TotalDue)
	from OrderHeader OH
	inner join OrderDetail OD on OD.OrderID = OH.SalesOrderID
	inner join Product P on P.ProductID = OD.ProductID
	inner join Certification C on C.CertifID = P.CertifID
	inner join Level L on L.LevelID = C.LevelID
	where L.LevelID = @idLevel
END
GO
