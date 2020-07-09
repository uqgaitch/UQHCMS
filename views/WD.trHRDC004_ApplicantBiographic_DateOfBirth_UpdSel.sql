USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC004_ApplicantBiographic_DateOfBirth_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[trHRDC004_ApplicantBiographic_DateOfBirth_UpdSel] as

SELECT        WD.HRDC004_ApplicantBiographic.DateOfBirth,  AUR.T000_WAMI.T000F110_DATE_OF_BIRTH AS DateOfBirthNew
FROM            WD.HRDC004_ApplicantBiographic INNER JOIN
                         AUR.T000_WAMI ON WD.HRDC004_ApplicantBiographic.EmployeeID = AUR.T000_WAMI.T000F005_WAMI_KEY


GO
