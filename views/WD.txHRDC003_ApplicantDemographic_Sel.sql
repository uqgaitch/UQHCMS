USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC003_ApplicantDemographic_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[txHRDC003_ApplicantDemographic_Sel] as


SELECT [EmployeeID]
      ,isnull([CountryISOCode],'') as [CountryISOCode]
      ,isnull([MaritalStatusName],'') as [MaritalStatusName]
      ,isnull([MaritalStatusDate],'') as [MaritalStatusDate]
      ,isnull([HispanicOrLatino],'') as [HispanicOrLatino]
      ,isnull([EthnicityName],'') [EthnicityName] -- Note this is now written in DGW HRDC032
      ,isnull([CitizenshipStatusDescription],'') as [CitizenshipStatusDescription]
      ,isnull([CitizenshipStatusCountryISOCode],'') as [CitizenshipStatusCountryISOCode]
      ,isnull([NationalityCountryISOCode],'') as [NationalityCountryISOCode]
      ,isnull([PrimaryNationality],'') as [PrimaryNationality]
      ,isnull([MilitaryStatusName],'') as [MilitaryStatusName]
      ,isnull([MilitaryStatusCountryISOCode],'') as [MilitaryStatusCountryISOCode]
      ,isnull([MilitaryDischargeDate],'') as [MilitaryDischargeDate]
      ,isnull([ReligionNam],'') as [ReligionNam]
      ,isnull([PoliticalAffiliationName],'') as [PoliticalAffiliationName]
    
  FROM [DQS_STAGING_DATA].[WD].[HRDC003_ApplicantDemographic]
  where zexclude is null
GO
