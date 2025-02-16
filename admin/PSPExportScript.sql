USE [master]
GO
/****** Object:  Database [PSP]    Script Date: 05.10.2015 13:05:23 ******/
CREATE DATABASE [PSP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PSP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TecfiCare.mdf' , SIZE = 22528KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PSP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TecfiCare_log.ldf' , SIZE = 35712KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PSP] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PSP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PSP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PSP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PSP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PSP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PSP] SET ARITHABORT OFF 
GO
ALTER DATABASE [PSP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PSP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PSP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PSP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PSP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PSP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PSP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PSP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PSP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PSP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PSP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PSP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PSP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PSP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PSP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PSP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PSP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PSP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PSP] SET  MULTI_USER 
GO
ALTER DATABASE [PSP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PSP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PSP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PSP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PSP] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PSP]
GO
/****** Object:  Table [dbo].[_FW_AuditTrail]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_FW_AuditTrail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[userid] [int] NOT NULL,
	[description] [nvarchar](256) NULL,
	[objectid] [int] NULL,
	[secondaryobjectid] [int] NULL,
	[fieldid] [int] NULL,
	[fieldname] [nvarchar](256) NULL,
	[oldvalue] [sql_variant] NULL,
	[newvalue] [sql_variant] NULL,
	[oldvalueapplicable] [bit] NULL,
	[newvalueapplicable] [bit] NULL,
	[fwobjecttype] [tinyint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[accounts]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[account] [nvarchar](50) NOT NULL,
	[pwd] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
	[title] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[forename] [nvarchar](50) NULL,
	[phone] [nvarchar](30) NULL,
	[email] [nvarchar](70) NULL,
	[fax] [nvarchar](50) NULL,
	[status] [nvarchar](2) NULL,
	[gendate] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[btk]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[btk](
	[btkid] [int] IDENTITY(1,1) NOT NULL,
	[sourceid] [int] NOT NULL,
	[patid] [int] NOT NULL,
	[quelle] [nvarchar](10) NULL,
	[medikament] [nvarchar](20) NULL,
	[gendate] [nvarchar](30) NULL,
	[btkdate] [nvarchar](30) NULL,
	[art] [nvarchar](30) NULL,
	[status] [nvarchar](30) NULL,
	[status_grund] [nvarchar](100) NULL,
	[status_date] [nvarchar](20) NULL,
	[thewe] [nvarchar](5) NULL,
	[thewemed] [nvarchar](50) NULL,
	[prophy_fls] [nvarchar](5) NULL,
	[fls_mexalen] [nvarchar](5) NULL,
	[fls_naproxen] [nvarchar](5) NULL,
	[fls_ibuprofen] [nvarchar](5) NULL,
	[fls_andere] [nvarchar](100) NULL,
	[prophy_haut] [nvarchar](5) NULL,
	[haut_coolpack] [nvarchar](5) NULL,
	[haut_andere] [nvarchar](100) NULL,
	[gastro] [nvarchar](5) NULL,
	[gastro_comment] [ntext] NULL,
	[flush] [nvarchar](5) NULL,
	[flush_comment] [ntext] NULL,
	[pen] [nvarchar](5) NULL,
	[bioset] [nvarchar](5) NULL,
	[fesp] [nvarchar](5) NULL,
	[nala] [nvarchar](20) NULL,
	[aaname] [nvarchar](100) NULL,
	[aadate] [nvarchar](30) NULL,
	[aacomment] [ntext] NULL,
	[injekort] [nvarchar](50) NULL,
	[avoject] [nvarchar](5) NULL,
	[titration] [nvarchar](5) NULL,
	[titration_dauer] [nvarchar](10) NULL,
	[titration_art] [nvarchar](5) NULL,
	[tecfidosis] [nvarchar](5) NULL,
	[angschule] [nvarchar](5) NULL,
	[angschulecomment] [ntext] NULL,
	[curmass] [nvarchar](5) NULL,
	[groesse] [nvarchar](5) NULL,
	[bmi] [nvarchar](5) NULL,
	[nw] [nvarchar](5) NULL,
	[bhv] [ntext] NULL,
	[nwtext] [ntext] NULL,
	[nwspontan] [nvarchar](5) NULL,
	[medan] [nvarchar](5) NULL,
	[medancomplete] [nvarchar](5) NULL,
	[medancomment] [ntext] NULL,
	[abgeschlossen] [nvarchar](5) NULL,
	[neko] [nvarchar](20) NULL,
	[nrskontakt] [nvarchar](5) NULL,
 CONSTRAINT [PK_btk] PRIMARY KEY CLUSTERED 
(
	[btkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order_products]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_products](
	[produkt] [nvarchar](150) NULL,
	[Plegridy] [nvarchar](5) NULL,
	[Tecfidera] [nvarchar](5) NULL,
	[Avonex] [nvarchar](5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[ordid] [int] IDENTITY(1,1) NOT NULL,
	[patid] [int] NULL,
	[procdate] [nvarchar](20) NULL,
	[quelle] [nvarchar](10) NULL,
	[pdf] [nvarchar](100) NULL,
	[medikament] [nvarchar](50) NULL,
	[item1] [nvarchar](150) NULL,
	[item2] [nvarchar](150) NULL,
	[item3] [nvarchar](150) NULL,
	[item4] [nvarchar](150) NULL,
	[item5] [nvarchar](150) NULL,
	[item6] [nvarchar](150) NULL,
	[item7] [nvarchar](150) NULL,
	[item8] [nvarchar](150) NULL,
	[item9] [nvarchar](150) NULL,
	[item10] [nvarchar](150) NULL,
	[item11] [nvarchar](150) NULL,
	[item12] [nvarchar](150) NULL,
	[item13] [nvarchar](150) NULL,
	[item14] [nvarchar](150) NULL,
	[item15] [nvarchar](150) NULL,
	[item16] [nvarchar](150) NULL,
	[item17] [nvarchar](150) NULL,
	[item18] [nvarchar](150) NULL,
	[item19] [nvarchar](150) NULL,
	[item20] [nvarchar](150) NULL,
	[item21] [nvarchar](150) NULL,
	[item22] [nvarchar](150) NULL,
	[item23] [nvarchar](150) NULL,
	[item24] [nvarchar](150) NULL,
	[item25] [nvarchar](150) NULL,
	[item26] [nvarchar](150) NULL,
	[item27] [nvarchar](150) NULL,
	[item28] [nvarchar](150) NULL,
	[item29] [nvarchar](150) NULL,
	[item30] [nvarchar](150) NULL,
	[item31] [nvarchar](150) NULL,
	[item32] [nvarchar](150) NULL,
	[item33] [nvarchar](150) NULL,
	[item34] [nvarchar](150) NULL,
	[item35] [nvarchar](150) NULL,
	[item36] [nvarchar](150) NULL,
	[item37] [nvarchar](150) NULL,
	[item38] [nvarchar](150) NULL,
	[item39] [nvarchar](150) NULL,
	[item40] [nvarchar](150) NULL,
	[itemnum1] [nvarchar](3) NULL,
	[itemnum2] [nvarchar](3) NULL,
	[itemnum3] [nvarchar](3) NULL,
	[itemnum4] [nvarchar](3) NULL,
	[itemnum5] [nvarchar](3) NULL,
	[itemnum6] [nvarchar](3) NULL,
	[itemnum7] [nvarchar](3) NULL,
	[itemnum8] [nvarchar](3) NULL,
	[itemnum9] [nvarchar](3) NULL,
	[itemnum10] [nvarchar](3) NULL,
	[itemnum11] [nvarchar](3) NULL,
	[itemnum12] [nvarchar](3) NULL,
	[itemnum13] [nvarchar](3) NULL,
	[itemnum14] [nvarchar](3) NULL,
	[itemnum15] [nvarchar](3) NULL,
	[itemnum16] [nvarchar](3) NULL,
	[itemnum17] [nvarchar](3) NULL,
	[itemnum18] [nvarchar](3) NULL,
	[itemnum19] [nvarchar](3) NULL,
	[itemnum20] [nvarchar](3) NULL,
	[itemnum21] [nvarchar](3) NULL,
	[itemnum22] [nvarchar](3) NULL,
	[itemnum23] [nvarchar](3) NULL,
	[itemnum24] [nvarchar](3) NULL,
	[itemnum25] [nvarchar](3) NULL,
	[itemnum26] [nvarchar](3) NULL,
	[itemnum27] [nvarchar](3) NULL,
	[itemnum28] [nvarchar](3) NULL,
	[itemnum29] [nvarchar](3) NULL,
	[itemnum30] [nvarchar](3) NULL,
	[itemnum31] [nvarchar](3) NULL,
	[itemnum32] [nvarchar](3) NULL,
	[itemnum33] [nvarchar](3) NULL,
	[itemnum34] [nvarchar](3) NULL,
	[itemnum35] [nvarchar](3) NULL,
	[itemnum36] [nvarchar](3) NULL,
	[itemnum37] [nvarchar](3) NULL,
	[itemnum38] [nvarchar](3) NULL,
	[itemnum39] [nvarchar](3) NULL,
	[itemnum40] [nvarchar](3) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ordersArzt]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordersArzt](
	[patid] [int] NULL,
	[name] [nvarchar](100) NULL,
	[vorname] [nvarchar](50) NULL,
	[adresse] [nvarchar](100) NULL,
	[plz] [nvarchar](10) NULL,
	[ort] [nvarchar](100) NULL,
	[geschlecht] [nvarchar](10) NULL,
	[titel] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[patdaten]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patdaten](
	[patid] [int] IDENTITY(1,1) NOT NULL,
	[btkid] [int] NOT NULL,
	[ident] [nvarchar](200) NULL,
	[sourceid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[vorname] [nvarchar](50) NULL,
	[titel] [nvarchar](50) NULL,
	[geschlecht] [nvarchar](2) NULL,
	[gebdat] [nvarchar](20) NULL,
	[adresse] [nvarchar](100) NULL,
	[plz] [nvarchar](8) NULL,
	[ort] [nvarchar](100) NULL,
	[tel] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[gendate] [nvarchar](30) NULL,
	[artkontakt] [nvarchar](30) NULL,
	[consent] [nvarchar](10) NULL,
	[consdate] [nvarchar](20) NULL,
	[consget] [nvarchar](20) NULL,
	[medikament] [nvarchar](50) NULL,
	[diagnose] [nvarchar](5) NULL,
	[zentrum] [nvarchar](100) NULL,
	[intervall] [nvarchar](20) NULL,
	[erreichbarkeit] [nvarchar](20) NULL,
	[anonym] [nvarchar](20) NULL,
	[vorthe] [nvarchar](5) NULL,
	[vorthetext] [nvarchar](100) NULL,
	[thestart] [nvarchar](20) NULL,
	[leko] [nvarchar](20) NULL,
	[status] [nvarchar](50) NULL,
	[neko] [nvarchar](20) NULL,
	[einschulung] [nvarchar](20) NULL,
	[injektionstag] [nvarchar](20) NULL,
	[groesse] [nvarchar](5) NULL,
	[gewicht] [nvarchar](5) NULL,
	[zustaendigkeit] [nvarchar](20) NULL,
 CONSTRAINT [PK_patdaten_1] PRIMARY KEY CLUSTERED 
(
	[patid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[verteiler_ma]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verteiler_ma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](200) NULL,
	[typ] [nvarchar](5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[verteiler_nrskontakt]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verteiler_nrskontakt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](200) NULL,
	[typ] [nvarchar](5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[verteiler_nw]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verteiler_nw](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](200) NULL,
	[typ] [nvarchar](5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[verteiler_order]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verteiler_order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](200) NULL,
	[typ] [nvarchar](5) NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[btkall]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[btkall]
AS
SELECT        dbo.btk.*
FROM            dbo.btk

GO
/****** Object:  StoredProcedure [dbo].[_FW_addAuditTrailEntry]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		DolphiCom (Stefan Kalcher)
-- Create date: 10.09.2008
-- Modify date: 23.11.2009
-- Description:	adds an audittrail entry
-- =============================================
CREATE PROCEDURE [dbo].[_FW_addAuditTrailEntry] 
	-- Add the parameters for the stored procedure here
	@Id bigint = NULL OUTPUT,
	@Type int = NULL,
	@DateTime datetime = NULL OUTPUT,
	@UserId int = NULL,
	@Description nvarchar(256) = NULL,
	@ObjectId int = NULL,
	@SecondaryObjectId int = NULL,
	@FieldId int = NULL,
	@FieldName nvarchar(256) = NULL,
	@OldValue sql_variant = NULL,
	@NewValue sql_variant = NULL,
	@OldValueApplicable bit = NULL,
	@NewValueApplicable bit = NULL,
	@FwObjectType tinyint = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF @Type IS NULL
	BEGIN
		RAISERROR('Parameter @Type darf nicht NULL sein!', -1, 1)
		RETURN 1;
	END
	
	IF @UserID IS NULL
	BEGIN
		RAISERROR('Parameter @UserId darf nicht NULL sein!', -1, 1)
		RETURN 1;
	END
	
	SET @DateTime = CURRENT_TIMESTAMP;

	INSERT INTO [_FW_AuditTrail]
		   ([type]
		   ,[datetime]
		   ,[userid]
		   ,[description]
		   ,[objectid]
		   ,[secondaryobjectid]
		   ,[fieldid]
		   ,[fieldname]
		   ,[oldvalue]
		   ,[newvalue]
		   ,[oldvalueapplicable]
		   ,[newvalueapplicable]
		   ,[fwobjecttype])
	 VALUES
		   (@Type
		   ,@DateTime
		   ,@UserId
		   ,@Description
		   ,@ObjectId
		   ,@SecondaryObjectId
		   ,@FieldId
		   ,@FieldName
		   ,@OldValue
		   ,@NewValue
		   ,@OldValueApplicable
		   ,@NewValueApplicable
		   ,@FwObjectType)
           
	 SET @Id = SCOPE_IDENTITY()
END


GO
/****** Object:  StoredProcedure [dbo].[count_patienten]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 060509
-- Description:	select from table patienten
-- =============================================
CREATE PROCEDURE [dbo].[count_patienten]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT COUNT(*) FROM patdaten
END

GO
/****** Object:  StoredProcedure [dbo].[get_account]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 06-07-09
-- Description:	select from table account
-- =============================================
CREATE PROCEDURE [dbo].[get_account] 
	-- Add the parameters for the stored procedure here
	@id smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM accounts WHERE id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[get_btkbybtkid]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 06-07-09
-- Description:	select from table dkskontakt all contacts for a patient
-- =============================================
CREATE PROCEDURE [dbo].[get_btkbybtkid] 
@btkid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM btk WHERE btkid=@btkid  ORDER BY btkid DESC, btkdate DESC
END

GO
/****** Object:  StoredProcedure [dbo].[get_btkbypatid]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 06-07-09
-- Description:	select from table dkskontakt all contacts for a patient
-- =============================================
CREATE PROCEDURE [dbo].[get_btkbypatid] 
@patid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM btk WHERE patid=@patid  ORDER BY btkid DESC, btkdate DESC
END

GO
/****** Object:  StoredProcedure [dbo].[get_btkmsdatabase]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 230509
-- Description:	select from table patient
-- =============================================
CREATE PROCEDURE [dbo].[get_btkmsdatabase] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM msdatabase.dbo.dkskontakt
END

GO
/****** Object:  StoredProcedure [dbo].[get_orderarztbypatid]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 06-07-09
-- Description:	select from table dkskontakt all contacts for a patient
-- =============================================
CREATE PROCEDURE [dbo].[get_orderarztbypatid] 
@patid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM ordersArzt WHERE patid=@patid 
END

GO
/****** Object:  StoredProcedure [dbo].[get_orderbyprocdate]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[get_orderbyprocdate] 
@procdate nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM orders WHERE procdate=@procdate
END
GO
/****** Object:  StoredProcedure [dbo].[get_orderproducts]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 06-07-09
-- Description:	select from table dkskontakt all contacts for a patient
-- =============================================
CREATE PROCEDURE [dbo].[get_orderproducts] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM order_products
END

GO
/****** Object:  StoredProcedure [dbo].[get_ordersbypatid]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 06-07-09
-- Description:	select from table dkskontakt all contacts for a patient
-- =============================================
CREATE PROCEDURE [dbo].[get_ordersbypatid] 
@patid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM orders WHERE patid=@patid  ORDER BY ordid DESC, procdate DESC
END

GO
/****** Object:  StoredProcedure [dbo].[get_ordersmsdatabase]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 06-07-09
-- Description:	select from table dkskontakt all contacts for a patient
-- =============================================
CREATE PROCEDURE [dbo].[get_ordersmsdatabase] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM msdatabase.dbo.bestellung
END

GO
/****** Object:  StoredProcedure [dbo].[get_patallmsdatabase]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 230509
-- Description:	select from table patient
-- =============================================
CREATE PROCEDURE [dbo].[get_patallmsdatabase] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM msdatabase.dbo.vw_patall
END

GO
/****** Object:  StoredProcedure [dbo].[get_patdat]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[get_patdat] 
@patid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM patdaten WHERE patid=@patid
END
GO
/****** Object:  StoredProcedure [dbo].[get_patid]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[get_patid] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM patdaten ORDER BY gendate DESC
END
GO
/****** Object:  StoredProcedure [dbo].[get_verteilerMA]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[get_verteilerMA] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM verteiler_ma 
END
GO
/****** Object:  StoredProcedure [dbo].[get_verteilerNRSKONTAKT]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[get_verteilerNRSKONTAKT] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM verteiler_nrskontakt 
END
GO
/****** Object:  StoredProcedure [dbo].[get_verteilerNW]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[get_verteilerNW] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM verteiler_nw 
END
GO
/****** Object:  StoredProcedure [dbo].[get_verteilerORDER]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[get_verteilerORDER] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM verteiler_order 
END
GO
/****** Object:  StoredProcedure [dbo].[insert_btk]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_btk]
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

GO
/****** Object:  StoredProcedure [dbo].[insert_msdatabase2btk]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_msdatabase2btk]
@btkid int,
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

    INSERT INTO btk (btkid,sourceid,patid,quelle,medikament,gendate,btkdate,art,status,status_grund,status_date,thewe,thewemed,prophy_fls,fls_mexalen,fls_naproxen,fls_ibuprofen,fls_andere,prophy_haut,haut_coolpack,haut_andere,gastro,gastro_comment,flush,flush_comment,pen,bioset,fesp,nala,aaname,aadate,aacomment,injekort,avoject,titration,titration_dauer,titration_art,tecfidosis,angschule,angschulecomment,curmass,groesse,bmi,nw,bhv,nwtext,nwspontan,medan,medancomplete,medancomment,abgeschlossen,neko,nrskontakt)
	VALUES (@btkid,@sourceid,@patid,@quelle,@medikament,@gendate,@btkdate,@art,@status,@status_grund,@status_date,@thewe,@thewemed,@prophy_fls,@fls_mexalen,@fls_naproxen,@fls_ibuprofen,@fls_andere,@prophy_haut,@haut_coolpack,@haut_andere,@gastro,@gastro_comment,@flush,@flush_comment,@pen,@bioset,@fesp,@nala,@aaname,@aadate,@aacomment,@injekort,@avoject,@titration,@titration_dauer,@titration_art,@tecfidosis,@angschule,@angschulecomment,@curmass,@groesse,@bmi,@nw,@bhv,@nwtext,@nwspontan,@medan,@medancomplete,@medancomment,@abgeschlossen,@neko,@nrskontakt)
END

GO
/****** Object:  StoredProcedure [dbo].[insert_msdatabase2orders]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_msdatabase2orders]
	@ordid int,
	@patid int,
	@medikament nvarchar(50),
	@procdate nvarchar(20),
	@quelle nvarchar(10),
	@item1 nvarchar(150),
	@item2 nvarchar(150),
	@item3 nvarchar(150),
	@item4 nvarchar(150),
	@item5 nvarchar(150),
	@item6 nvarchar(150),
	@item7 nvarchar(150),
	@item8 nvarchar(150),
	@item9 nvarchar(150),
	@item10 nvarchar(150),
	@item11 nvarchar(150),
	@item12 nvarchar(150),
	@item13 nvarchar(150),
	@item14 nvarchar(150),
	@item15 nvarchar(150),
	@item16 nvarchar(150),
	@item17 nvarchar(150),
	@item18 nvarchar(150),
	@item19 nvarchar(150),
	@item20 nvarchar(150),
	@item21 nvarchar(150),
	@item22 nvarchar(150),
	@item23 nvarchar(150),
	@item24 nvarchar(150),
	@item25 nvarchar(150),
	@item26 nvarchar(150),
	@item27 nvarchar(150),
	@item28 nvarchar(150),
	@item29 nvarchar(150),
	@item30 nvarchar(150),
	@item31 nvarchar(150),
	@item32 nvarchar(150),
	@item33 nvarchar(150),
	@item34 nvarchar(150),
	@item35 nvarchar(150),
	@item36 nvarchar(150),
	@item37 nvarchar(150),
	@item38 nvarchar(150),
	@item39 nvarchar(150),
	@item40 nvarchar(40),
	@itemnum1 nvarchar(3),
	@itemnum2 nvarchar(3),
	@itemnum3 nvarchar(3),
	@itemnum4 nvarchar(3),
	@itemnum5 nvarchar(3),
	@itemnum6 nvarchar(3),
	@itemnum7 nvarchar(3),
	@itemnum8 nvarchar(3),
	@itemnum9 nvarchar(3),
	@itemnum10 nvarchar(3),
	@itemnum11 nvarchar(3),
	@itemnum12 nvarchar(3),
	@itemnum13 nvarchar(3),
	@itemnum14 nvarchar(3),
	@itemnum15 nvarchar(3),
	@itemnum16 nvarchar(3),
	@itemnum17 nvarchar(3),
	@itemnum18 nvarchar(3),
	@itemnum19 nvarchar(3),
	@itemnum20 nvarchar(3),
	@itemnum21 nvarchar(3),
	@itemnum22 nvarchar(3),
	@itemnum23 nvarchar(3),
	@itemnum24 nvarchar(3),
	@itemnum25 nvarchar(3),
	@itemnum26 nvarchar(3),
	@itemnum27 nvarchar(3),
	@itemnum28 nvarchar(3),
	@itemnum29 nvarchar(3),
	@itemnum30 nvarchar(3),
	@itemnum31 nvarchar(3),
	@itemnum32 nvarchar(3),
	@itemnum33 nvarchar(3),
	@itemnum34 nvarchar(3),
	@itemnum35 nvarchar(3),
	@itemnum36 nvarchar(3),
	@itemnum37 nvarchar(3),
	@itemnum38 nvarchar(3),
	@itemnum39 nvarchar(3),
	@itemnum40 nvarchar(3),
	@pdf nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON

    INSERT INTO orders (ordid,patid,medikament,procdate,quelle,item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11,item12,item13,item14,item15,item16,item17,item18,item19,item20,item21,item22,item23,item24,item25,item26,item27,item28,item29,item30,item31,item32,item33,item34,item35,item36,item37,item38,item39,item40,itemnum1,itemnum2,itemnum3,itemnum4,itemnum5,itemnum6,itemnum7,itemnum8,itemnum9,itemnum10,itemnum11,itemnum12,itemnum13,itemnum14,itemnum15,itemnum16,itemnum17,itemnum18,itemnum19,itemnum20,itemnum21,itemnum22,itemnum23,itemnum24,itemnum25,itemnum26,itemnum27,itemnum28,itemnum29,itemnum30,itemnum31,itemnum32,itemnum33,itemnum34,itemnum35,itemnum36,itemnum37,itemnum38,itemnum39,itemnum40,pdf)
	VALUES (@ordid,@patid,@medikament,@procdate,@quelle,@item1,@item2,@item3,@item4,@item5,@item6,@item7,@item8,@item9,@item10,@item11,@item12,@item13,@item14,@item15,@item16,@item17,@item18,@item19,@item20,@item21,@item22,@item23,@item24,@item25,@item26,@item27,@item28,@item29,@item30,@item31,@item32,@item33,@item34,@item35,@item36,@item37,@item38,@item39,@item40,@itemnum1,@itemnum2,@itemnum3,@itemnum4,@itemnum5,@itemnum6,@itemnum7,@itemnum8,@itemnum9,@itemnum10,@itemnum11,@itemnum12,@itemnum13,@itemnum14,@itemnum15,@itemnum16,@itemnum17,@itemnum18,@itemnum19,@itemnum20,@itemnum21,@itemnum22,@itemnum23,@itemnum24,@itemnum25,@itemnum26,@itemnum27,@itemnum28,@itemnum29,@itemnum30,@itemnum31,@itemnum32,@itemnum33,@itemnum34,@itemnum35,@itemnum36,@itemnum37,@itemnum38,@itemnum39,@itemnum40,@pdf)
END

GO
/****** Object:  StoredProcedure [dbo].[insert_msdatabase2patdat]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_msdatabase2patdat]
	@patid int,
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

    INSERT INTO patdaten (patid,btkid,sourceid,ident,name,vorname,titel,geschlecht, gebdat,adresse,plz,ort,tel,email,gendate,artkontakt,consent,consdate,consget,
	medikament,diagnose,zentrum,intervall,erreichbarkeit, anonym,vorthe,vorthetext,thestart, einschulung, status, leko,injektionstag,neko,groesse, gewicht, zustaendigkeit)
	VALUES (@patid,@btkid,@sourceid,@ident,@name,@vorname,@titel,@geschlecht,@gebdat,@adresse,@plz,@ort,@tel,@email,@gendate,@artkontakt,@consent,@consdate,@consget,
	@medikament,@diagnose,@zentrum,@intervall,@errei,@anonym,@vorthe,@vorthetext,@thestart,@einschulung,@status,@leko,@injektionstag,@neko,@groesse,@gewicht,@zustaendigkeit)
END

GO
/****** Object:  StoredProcedure [dbo].[insert_order]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_order]
	@patid int,
	@medikament nvarchar(50),
	@procdate nvarchar(20),
	@quelle nvarchar(10),
	@item1 nvarchar(150),
	@item2 nvarchar(150),
	@item3 nvarchar(150),
	@item4 nvarchar(150),
	@item5 nvarchar(150),
	@item6 nvarchar(150),
	@item7 nvarchar(150),
	@item8 nvarchar(150),
	@item9 nvarchar(150),
	@item10 nvarchar(150),
	@item11 nvarchar(150),
	@item12 nvarchar(150),
	@item13 nvarchar(150),
	@item14 nvarchar(150),
	@item15 nvarchar(150),
	@item16 nvarchar(150),
	@item17 nvarchar(150),
	@item18 nvarchar(150),
	@item19 nvarchar(150),
	@item20 nvarchar(150),
	@item21 nvarchar(150),
	@item22 nvarchar(150),
	@item23 nvarchar(150),
	@item24 nvarchar(150),
	@item25 nvarchar(150),
	@item26 nvarchar(150),
	@item27 nvarchar(150),
	@item28 nvarchar(150),
	@item29 nvarchar(150),
	@item30 nvarchar(150),
	@item31 nvarchar(150),
	@item32 nvarchar(150),
	@item33 nvarchar(150),
	@item34 nvarchar(150),
	@item35 nvarchar(150),
	@item36 nvarchar(150),
	@item37 nvarchar(150),
	@item38 nvarchar(150),
	@item39 nvarchar(150),
	@item40 nvarchar(40),
	@itemnum1 nvarchar(3),
	@itemnum2 nvarchar(3),
	@itemnum3 nvarchar(3),
	@itemnum4 nvarchar(3),
	@itemnum5 nvarchar(3),
	@itemnum6 nvarchar(3),
	@itemnum7 nvarchar(3),
	@itemnum8 nvarchar(3),
	@itemnum9 nvarchar(3),
	@itemnum10 nvarchar(3),
	@itemnum11 nvarchar(3),
	@itemnum12 nvarchar(3),
	@itemnum13 nvarchar(3),
	@itemnum14 nvarchar(3),
	@itemnum15 nvarchar(3),
	@itemnum16 nvarchar(3),
	@itemnum17 nvarchar(3),
	@itemnum18 nvarchar(3),
	@itemnum19 nvarchar(3),
	@itemnum20 nvarchar(3),
	@itemnum21 nvarchar(3),
	@itemnum22 nvarchar(3),
	@itemnum23 nvarchar(3),
	@itemnum24 nvarchar(3),
	@itemnum25 nvarchar(3),
	@itemnum26 nvarchar(3),
	@itemnum27 nvarchar(3),
	@itemnum28 nvarchar(3),
	@itemnum29 nvarchar(3),
	@itemnum30 nvarchar(3),
	@itemnum31 nvarchar(3),
	@itemnum32 nvarchar(3),
	@itemnum33 nvarchar(3),
	@itemnum34 nvarchar(3),
	@itemnum35 nvarchar(3),
	@itemnum36 nvarchar(3),
	@itemnum37 nvarchar(3),
	@itemnum38 nvarchar(3),
	@itemnum39 nvarchar(3),
	@itemnum40 nvarchar(3),
	@pdf nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON

    INSERT INTO orders (patid,medikament,procdate,quelle,item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11,item12,item13,item14,item15,item16,item17,item18,item19,item20,item21,item22,item23,item24,item25,item26,item27,item28,item29,item30,item31,item32,item33,item34,item35,item36,item37,item38,item39,item40,itemnum1,itemnum2,itemnum3,itemnum4,itemnum5,itemnum6,itemnum7,itemnum8,itemnum9,itemnum10,itemnum11,itemnum12,itemnum13,itemnum14,itemnum15,itemnum16,itemnum17,itemnum18,itemnum19,itemnum20,itemnum21,itemnum22,itemnum23,itemnum24,itemnum25,itemnum26,itemnum27,itemnum28,itemnum29,itemnum30,itemnum31,itemnum32,itemnum33,itemnum34,itemnum35,itemnum36,itemnum37,itemnum38,itemnum39,itemnum40,pdf)
	VALUES (@patid,@medikament,@procdate,@quelle,@item1,@item2,@item3,@item4,@item5,@item6,@item7,@item8,@item9,@item10,@item11,@item12,@item13,@item14,@item15,@item16,@item17,@item18,@item19,@item20,@item21,@item22,@item23,@item24,@item25,@item26,@item27,@item28,@item29,@item30,@item31,@item32,@item33,@item34,@item35,@item36,@item37,@item38,@item39,@item40,@itemnum1,@itemnum2,@itemnum3,@itemnum4,@itemnum5,@itemnum6,@itemnum7,@itemnum8,@itemnum9,@itemnum10,@itemnum11,@itemnum12,@itemnum13,@itemnum14,@itemnum15,@itemnum16,@itemnum17,@itemnum18,@itemnum19,@itemnum20,@itemnum21,@itemnum22,@itemnum23,@itemnum24,@itemnum25,@itemnum26,@itemnum27,@itemnum28,@itemnum29,@itemnum30,@itemnum31,@itemnum32,@itemnum33,@itemnum34,@itemnum35,@itemnum36,@itemnum37,@itemnum38,@itemnum39,@itemnum40,@pdf)
END

GO
/****** Object:  StoredProcedure [dbo].[insert_patdat]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_patdat]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		glaky
-- Create date: 06-07-09
-- Description:	select from table account
-- =============================================
CREATE PROCEDURE [dbo].[sp_login] 
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
GO
/****** Object:  StoredProcedure [dbo].[update_btk]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_btk]
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

GO
/****** Object:  StoredProcedure [dbo].[update_orderbypdf]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_orderbypdf]
@ordid int,
@pdf nvarchar(100)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON

    UPDATE orders SET pdf=@pdf WHERE ordid = @ordid
END

GO
/****** Object:  StoredProcedure [dbo].[update_ordersarzt]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_ordersarzt]
	@patid int,
	@name nvarchar(100),
	@vorname nvarchar(50),
	@adresse nvarchar(100),
	@plz nvarchar(10),
	@ort nvarchar(100),
	@geschlecht nvarchar(10),
	@titel nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON
	SELECT * FROM ordersArzt WHERE patid = @patid
	IF @@ROWCOUNT=0 
		BEGIN
			INSERT INTO ordersArzt (patid,name,vorname,adresse,plz,ort,geschlecht,titel) VALUES (@patid,@name,@vorname,@adresse,@plz,@ort,@geschlecht,@titel)
		END 
    ELSE
		BEGIN
			UPDATE ordersArzt SET name=@name,vorname=@vorname,adresse=@adresse,plz=@plz,ort=@ort,geschlecht=@geschlecht,titel=@titel WHERE patid=@patid
		END
END

GO
/****** Object:  StoredProcedure [dbo].[update_patdat]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_patdat]
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

GO
/****** Object:  StoredProcedure [dbo].[update_patdatbybtk]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_patdatbybtk]
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

GO
/****** Object:  StoredProcedure [dbo].[update_patdatbybtkid]    Script Date: 05.10.2015 13:05:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_patdatbybtkid]
	@patid int,
	@btkid int,
	@zustaendigkeit nvarchar(5)  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON

	UPDATE patdaten SET btkid=@btkid, zustaendigkeit=@zustaendigkeit WHERE patid=@patid
    
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a..aktiv d..disabled' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'accounts', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "btk"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 250
               Right = 415
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'btkall'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'btkall'
GO
USE [master]
GO
ALTER DATABASE [PSP] SET  READ_WRITE 
GO
