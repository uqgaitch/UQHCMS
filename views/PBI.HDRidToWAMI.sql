USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[HDRidToWAMI]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [PBI].[HDRidToWAMI] as

SELECT distinct [T001F005_EMPLOYEE_NO]
      ,[T001F010_WAMI_KEY]
      ,[T001F120_ACTUAL_JOB_CODE]
	  ,T000F165_EXTERNAL_EMP_NO

  FROM [DQS_STAGING_DATA].[AUR].[T001_BASIC_DETAILS]

  inner join aur.t000_wami on T001F010_WAMI_KEY = T000F005_WAMI_KEY
  inner join wd.empscope on WAMIKey = T000F005_WAMI_KEY

  where T001F120_ACTUAL_JOB_CODE = 'SCHOL' and T001F015_EMPLOYEE_STATUS = 'active' and T000F165_EXTERNAL_EMP_NO is null
GO
