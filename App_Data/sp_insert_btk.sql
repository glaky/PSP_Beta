USE [PSP]
GO
/****** Object:  StoredProcedure [dbo].[insert_btk]    Script Date: 02.10.2015 11:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[insert_btk]
@sourceid int,
@patid int,
@quelle nvarchar(10),
@medikament nvarchar(20),
@gendate nvarchar(30),
@btkdate nvarchar(30),
@art nvarchar(30),
@status nvarchar(30),
@status_grund nvarchar(100),
@status_date nvarchar(20),
@thewe nvarchar(5),
@thewemed nvarchar(50),
@prophy_fls nvarchar(5),
@fls_mexalen nvarchar(5),
@fls_naproxen nvarchar(5),
@fls_ibuprofen nvarchar(5),
@fls_andere nvarchar(100),
@prophy_haut nvarchar(5),
@haut_coolpack nvarchar(5),
@haut_andere nvarchar(100),
@gastro nvarchar(5),
@gastro_comment ntext,
@flush nvarchar(5),
@flush_comment ntext,
@pen nvarchar(5),
@bioset nvarchar(5),
@fesp nvarchar(5),
@nala nvarchar(20),
@aaname nvarchar(100),
@aadate nvarchar(30),
@aacomment ntext,
@injekort nvarchar(50),
@avoject nvarchar(5),
@titration nvarchar(5),
@titration_dauer nvarchar(10),
@titration_art nvarchar(5),
@tecfidosis nvarchar(5),
@angschule nvarchar(5),
@angschulecomment ntext,
@curmass nvarchar(5),
@groesse nvarchar(5),
@bmi nvarchar(5),
@nw nvarchar(5),
@bhv ntext,
@nwtext ntext,
@nwspontan nvarchar(5),
@medan nvarchar(5),
@medancomplete nvarchar(5),
@medancomment ntext,
@abgeschlossen nvarchar(5),
@neko nvarchar(20),
@nrskontakt nvarchar(5)


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON

    INSERT INTO btk (sourceid,patid,quelle,medikament,gendate,btkdate,art,status,status_grund,status_date,thewe,thewemed,prophy_fls,fls_mexalen,fls_naproxen,fls_ibuprofen,fls_andere,prophy_haut,haut_coolpack,haut_andere,gastro,gastro_comment,flush,flush_comment,pen,bioset,fesp,nala,aaname,aadate,aacomment,injekort,avoject,titration,titration_dauer,titration_art,tecfidosis,angschule,angschulecomment,curmass,groesse,bmi,nw,bhv,nwtext,nwspontan,medan,medancomplete,medancomment,abgeschlossen,neko,nrskontakt)
	VALUES (@sourceid,@patid,@quelle,@medikament,@gendate,@btkdate,@art,@status,@status_grund,@status_date,@thewe,@thewemed,@prophy_fls,@fls_mexalen,@fls_naproxen,@fls_ibuprofen,@fls_andere,@prophy_haut,@haut_coolpack,@haut_andere,@gastro,@gastro_comment,@flush,@flush_comment,@pen,@bioset,@fesp,@nala,@aaname,@aadate,@aacomment,@injekort,@avoject,@titration,@titration_dauer,@titration_art,@tecfidosis,@angschule,@angschulecomment,@curmass,@groesse,@bmi,@nw,@bhv,@nwtext,@nwspontan,@medan,@medancomplete,@medancomment,@abgeschlossen,@neko,@nrskontakt)
END
