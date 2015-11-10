USE [PSP]
GO
/****** Object:  StoredProcedure [dbo].[update_patdatbybtk]    Script Date: 29.09.2015 08:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[update_patdatbybtk]
	@patid int, 
	@status nvarchar(50),
	@btkid int,
	@leko nvarchar(20),
	@neko nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON

	UPDATE patdaten SET status=@status,btkid=@btkid,leko=@leko,neko=@neko WHERE patid=@patid
    
END
