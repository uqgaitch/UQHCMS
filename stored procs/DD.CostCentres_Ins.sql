USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CostCentres_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================




ALTER Procedure [DD].[CostCentres_Ins]
as 

truncate table [DD].[CostCenters]

INSERT INTO [DD].[CostCenters]
           ([AURION]
           ,[Group2]
           ,[Group3]
           ,[Group4]
           ,[Group5]
           ,[Group6]
           ,[Group7]
           ,[Group8]
           ,[Group9]
           ,[Group10]
           ,[Reference ID]
           ,[Value]
           ,[Cost Centre Org Code]
           ,[Effective Date]
           ,[Cost Center Type]
           ,[Parent ID (Hierarchy)]
           ,[Business_Identifier]
           ,[BU Manager ID]
           ,[Inactive]
           ,[Comments]
		   ,loaddate)
SELECT  AURION
, Group2
, Group3
, Group4
, Group5
, Group6
, Group7
, Group8
, Group9
, Group10
, [Reference ID]
, [Value]
, [Cost Centre Org Code]
, [Effective Date]
, [Cost Center Type]
, [Parent ID (Hierarchy)]
, [Business_Identifier]
, [BU Manager ID]
, Inactive
, Comments
, getdate() as loadDate

FROM [DD].[CostCentres_InsSel]
GO
