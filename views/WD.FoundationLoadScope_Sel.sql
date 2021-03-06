USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[FoundationLoadScope_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [WD].[FoundationLoadScope_Sel] as
SELECT  [EmployeeID]
      ,[JobPositionID]
      ,[JobPositionTitle]
      ,[JobCode]
      ,[PositionTitle]
      ,[Location]

  FROM [DQS_STAGING_DATA].[AUR].[HRDC006_EmployeePositionManagementMG_InsSel]
  where [SupervisoryOrganisationPositionManagementOrg] in ('148','150','153','474','704','746', 
  '626',
'699',
'700',
'729',
'321',
'410',
'572',
'585',
'633',
'715',
'728',
'730',
'731',
'732',
'733',
'734',
'735',
'736',
'737',
'738',
'739',
'741',
'742',
'743',
'744',
'745',
'747',
'748',
'749',
'750',
'751',
'752',
'753',
'771',
'796',
'797',
'798',
'799')
GO
