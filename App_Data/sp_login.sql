USE [TecfiCare]
GO
/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 23.07.2014 21:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 06-07-09
-- Description:	select from table account
-- =============================================
ALTER PROCEDURE [dbo].[sp_login] 
	-- Add the parameters for the stored procedure here
	@account varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM accounts WHERE account=@account
END