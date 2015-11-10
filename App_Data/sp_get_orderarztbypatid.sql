USE [TecfiCare]
GO
/****** Object:  StoredProcedure [dbo].[get_orderarztbypatid]    Script Date: 23.07.2014 21:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 06-07-09
-- Description:	select from table dkskontakt all contacts for a patient
-- =============================================
ALTER PROCEDURE [dbo].[get_orderarztbypatid] 
@patid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM ordersArzt WHERE patid=@patid 
END
