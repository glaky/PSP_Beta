USE [PSP]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_account]    Script Date: 05.10.2015 15:31:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gunter Laky
-- Create date: 06-07-09
-- Description:	Update entry of accounts
-- =============================================
CREATE PROCEDURE [dbo].[update_account]	
	@id int,
	@name nvarchar(50),
	@forename nvarchar(50),
	@account nvarchar(50),
	@pwd nvarchar(50),
	@role nvarchar(50),
	@phone nvarchar(50),
	@fax nvarchar(50),
	@email nvarchar(70),
	@gendate nvarchar(30),
	@status nvarchar(2),
	@title nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON
    UPDATE accounts SET title=@title,name=@name, forename=@forename,account=@account,pwd=@pwd,role=@role,phone=@phone,fax=@fax,email=@email,gendate=@gendate,status=@status WHERE id=@id
END


