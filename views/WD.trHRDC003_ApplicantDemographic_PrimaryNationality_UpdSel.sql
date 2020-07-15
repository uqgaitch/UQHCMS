USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC003_ApplicantDemographic_PrimaryNationality_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





ALTER view [WD].[trHRDC003_ApplicantDemographic_PrimaryNationality_UpdSel] as

SELECT        PrimaryNationality, 'Y' AS PrimaryNationalityNew
FROM            WD.HRDC003_ApplicantDemographic
WHERE        (zDualCitizen IS NULL)
and nationalitycountryisocode is not null
GO
