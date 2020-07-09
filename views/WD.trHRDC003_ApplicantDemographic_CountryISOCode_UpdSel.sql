USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC003_ApplicantDemographic_CountryISOCode_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC003_ApplicantDemographic_CountryISOCode_UpdSel] as

SELECT        WD.HRDC003_ApplicantDemographic.CountryISOCode, 
'AUS' as CountryISOCodeNew
--AUR.T000_WAMI.T000F270_COUNTRY_CODE AS CountryISOCodeNew
FROM            WD.HRDC003_ApplicantDemographic INNER JOIN
                         AUR.T000_WAMI ON WD.HRDC003_ApplicantDemographic.EmployeeID = AUR.T000_WAMI.T000F005_WAMI_KEY

GO
