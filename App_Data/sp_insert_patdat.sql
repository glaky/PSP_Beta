USE [PSP]
GO
/****** Object:  StoredProcedure [dbo].[insert_patdat]    Script Date: 29.09.2015 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[insert_patdat]
	@btkid int,
	@sourceid int,
	@ident nvarchar(200),
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
	@gendate nvarchar(30),
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

    INSERT INTO patdaten (btkid,sourceid,ident,name,vorname,titel,geschlecht, gebdat,adresse,plz,ort,tel,email,gendate,artkontakt,consent,consdate,consget,
	medikament,diagnose,zentrum,intervall,erreichbarkeit, anonym,vorthe,vorthetext,thestart, einschulung, status, leko,injektionstag,neko,groesse, gewicht, zustaendigkeit)
	VALUES (@btkid,@sourceid,@ident,@name,@vorname,@titel,@geschlecht,@gebdat,@adresse,@plz,@ort,@tel,@email,@gendate,@artkontakt,@consent,@consdate,@consget,
	@medikament,@diagnose,@zentrum,@intervall,@errei,@anonym,@vorthe,@vorthetext,@thestart,@einschulung,@status,@leko,@injektionstag,@neko,@groesse,@gewicht,@zustaendigkeit)
END
