USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[ConvertAffil]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [PBI].[ConvertAffil] as 
SELECT distinct [T001F005_EMPLOYEE_NO]
      ,[T001F010_WAMI_KEY]
	  ,[T000F015_SURNAME]
      ,[T000F020_GIVEN_NAMES]
      ,[T001F015_EMPLOYEE_STATUS]
      ,[T001F120_ACTUAL_JOB_CODE]
	  ,T001F245_REPORTING_CATEGORY
  FROM [DQS_STAGING_DATA].[AUR].[T001_BASIC_DETAILS]
  inner join wd.empscope on wamikey= T001F010_WAMI_KEY
inner join aur.t000_wami on T001F010_WAMI_KEY = T000F005_WAMI_KEY

  where T001F120_ACTUAL_JOB_CODE = 'AFFIL' or T001F245_REPORTING_CATEGORY = 'OTHER' 

 
GO
