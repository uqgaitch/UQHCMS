USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC004_ApplicantBiographic_Gender_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC004_ApplicantBiographic_Gender_UpdSel] as

SELECT        WD.HRDC004_ApplicantBiographic.Gender, AUR.T000_WAMI.T000F105_GENDER as GenderNew
FROM            WD.HRDC004_ApplicantBiographic INNER JOIN
                         AUR.T000_WAMI ON WD.HRDC004_ApplicantBiographic.EmployeeID = AUR.T000_WAMI.T000F005_WAMI_KEY

GO
