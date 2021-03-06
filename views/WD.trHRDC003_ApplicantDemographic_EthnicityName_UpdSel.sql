USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC003_ApplicantDemographic_EthnicityName_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC003_ApplicantDemographic_EthnicityName_UpdSel] as

SELECT        WD.HRDC003_ApplicantDemographic.EthnicityName, ISNULL(AUR.T007_EEO_DETAILS.T007F105_CODE_E0, N'') AS EthnicityNameNew
FROM            WD.HRDC003_ApplicantDemographic INNER JOIN
                         AUR.T007_EEO_DETAILS ON WD.HRDC003_ApplicantDemographic.EmployeeID = AUR.T007_EEO_DETAILS.T007F005_WAMI_KEY
GO
