USE [PSP]
GO
/****** Object:  StoredProcedure [dbo].[update_patdat]    Script Date: 29.09.2015 14:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[update_patdat]
	@patid int, 
	@name nvarchar(50),
	@vorname nvarchar(50),
	@titel nvarchar(50),
	@geschlecht nvarchar(2),
	@gebdat nvarchar(20),
	@adresse nvarchar(100),
	@plz nvarchar(8),
	@ort nvarchar(100),
	@tel nvarchar(50),
	@email nvarchar(100),
	@artkontakt nvarchar(30),
	@consent nvarchar(2),
	@consdate nvarchar(20),
	@consget nvarchar(20),
	@medikament nvarchar(20),
	@diagnose nvarchar(5),
	@zentrum nvarchar(100),
	@intervall nvarchar(20),
	@errei nvarchar(20),
	@anonym nvarchar(20),
	@vorthe nvarchar(5),
	@vorthetext nvarchar(100),
	@thestart nvarchar(20),
	@einschulung nvarchar(20),
	@status nvarchar(50),
	@leko nvarchar(20),
	@injektionstag nvarchar(20),
	@neko nvarchar(20),
	@groesse nvarchar(5),
	@gewicht nvarchar(5),
	@zustaendigkeit nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON

	UPDATE patdaten SET name=@name,vorname=@vorname,titel=@titel,geschlecht=@geschlecht,gebdat=@gebdat,adresse=@adresse,plz=@plz,ort=@ort,tel=@tel,email=@email, artkontakt=@artkontakt,consent=@consent,consdate=@consdate,consget=@consget,medikament=@medikament,diagnose=@diagnose,zentrum=@zentrum,intervall=@intervall,erreichbarkeit=@errei,anonym=@anonym,vorthe=@vorthe,vorthetext=@vorthetext,thestart=@thestart,einschulung=@einschulung,injektionstag=@injektionstag,groesse=@groesse,gewicht=@gewicht, zustaendigkeit = @zustaendigkeit WHERE patid=@patid
    
END
