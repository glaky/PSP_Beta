USE [TecfiCare]
GO
/****** Object:  StoredProcedure [dbo].[update_orderbypdf]    Script Date: 23.07.2014 21:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[update_orderbypdf]
@ordid int,
@pdf nvarchar(100)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON

    UPDATE orders SET pdf=@pdf WHERE ordid = @ordid
END
