USE [TecfiCare]
GO
/****** Object:  StoredProcedure [dbo].[count_patienten]    Script Date: 23.07.2014 21:42:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 060509
-- Description:	select from table patienten
-- =============================================
ALTER PROCEDURE [dbo].[count_patienten]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT COUNT(*) FROM patdaten
END
