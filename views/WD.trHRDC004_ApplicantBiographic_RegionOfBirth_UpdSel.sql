USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC004_ApplicantBiographic_RegionOfBirth_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC004_ApplicantBiographic_RegionOfBirth_UpdSel] as

SELECT        WD.HRDC004_ApplicantBiographic.RegionOfBirth, AUR.T007_EEO_DETAILS.T007F015_COUNTRY_OF_BIRTH_CODE AS RegionOfBirthNew
FROM            WD.HRDC004_ApplicantBiographic INNER JOIN
                         AUR.T007_EEO_DETAILS ON WD.HRDC004_ApplicantBiographic.EmployeeID = AUR.T007_EEO_DETAILS.T007F005_WAMI_KEY


GO
