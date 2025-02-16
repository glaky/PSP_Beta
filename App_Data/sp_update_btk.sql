USE [PSP]
GO
/****** Object:  StoredProcedure [dbo].[update_btk]    Script Date: 02.10.2015 13:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[update_btk]
@btkid int,
@sourceid int,
@patid int,
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

    UPDATE btk SET sourceid=@sourceid,patid=@patid,medikament=@medikament,gendate=@gendate,btkdate=@btkdate,art=@art,status=@status,status_grund=@status_grund,status_date=@status_date,thewe=@thewe,thewemed=@thewemed,prophy_fls=@prophy_fls,fls_mexalen=@fls_mexalen,fls_naproxen=@fls_naproxen,fls_ibuprofen=@fls_ibuprofen,fls_andere=@fls_andere,prophy_haut=@prophy_haut,haut_coolpack=@haut_coolpack,haut_andere=@haut_andere,gastro=@gastro,gastro_comment=@gastro_comment,flush=@flush,flush_comment=@flush_comment,pen=@pen,bioset=@bioset,fesp=@fesp,nala=@nala,aaname=@aaname,aadate=@aadate,aacomment=@aacomment,injekort=@injekort,avoject=@avoject,titration=@titration,titration_dauer=@titration_dauer,titration_art=@titration_art,tecfidosis=@tecfidosis,angschule=@angschule,angschulecomment=@angschulecomment,curmass=@curmass,groesse=@groesse,bmi=@bmi,nw=@nw,bhv=@bhv,nwtext=@nwtext,nwspontan=@nwspontan,medan=@medan,medancomplete=@medancomplete,medancomment=@medancomment,abgeschlossen=@abgeschlossen,neko=@neko,nrskontakt=@nrskontakt WHERE btkid = @btkid
END
