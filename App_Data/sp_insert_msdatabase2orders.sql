USE [PSP]
GO
/****** Object:  StoredProcedure [dbo].[insert_order]    Script Date: 02.10.2015 14:45:17 ******/
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
