USE [TecfiCare]
GO
/****** Object:  StoredProcedure [dbo].[get_orderbyprocdate]    Script Date: 23.07.2014 21:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[get_orderbyprocdate] 
@procdate nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM orders WHERE procdate=@procdate
END