USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[DuplicateWAMI]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/

ALTER view [PBI].[DuplicateWAMI] as
SELECT [T008F005_WAMI_KEY]
	,T001F015_EMPLOYEE_STATUS
      ,[T008F010_TRANS_NO]
      ,[T008F015_IC]
      ,[T008F020_NOTATION_CODE]
      ,[T008F025_IA]
      ,[T008F030_ACTION_TAKEN]
      ,[T008F035_DATE]
      ,[T008F040_TIME]
      ,[T008F045_DATE_REPORTED]
      ,[T008F050_TIME_REPORTED]
      ,[T008F055_POSITIVE_NEGATIVE]
      ,[T008F060_REPORTED_BY]
      ,[T008F065_COMMENTS]
      ,[T008F070_ZC]
      ,[T008F075_CODE]
      ,[T008F080_DATE1]
      ,[T008F085_DATE2]
      ,[T008F090_BOOLEAN1]
      ,[T008F095_BOOLEAN2]
      ,[T008F100_AMOUNT1]
      ,[T008F105_AMOUNT2]
      ,[T008F110_PERSON]
      ,[T008F115_VIS_IN_CV]
      ,[T008F990_LONG_COMMENTS]
  FROM [DQS_STAGING_DATA].[AUR].[T008_NOTATIONS]



  inner join aur.T001_BASIC_DETAILS on T001F010_WAMI_KEY = T008F005_WAMI_KEY
 

where T008F990_LONG_COMMENTS like '%do not use%' and T001F015_EMPLOYEE_STATUS ='active'
GO
