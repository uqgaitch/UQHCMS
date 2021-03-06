USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC003_ApplicantDemographic_PrimaryNationalityOnlyDual_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC003_ApplicantDemographic_PrimaryNationalityOnlyDual_UpdSel] as

SELECT WD.HRDC003_ApplicantDemographic.PrimaryNationality, 'Y' AS PrimaryNationalityNew
FROM   WD.HRDC003_ApplicantDemographic INNER JOIN
             WD.trHRDC003_ApplicantDemographic_PrimaryNationalityOnlyDual_Sel 
			 ON WD.HRDC003_ApplicantDemographic.EmployeeID = WD.trHRDC003_ApplicantDemographic_PrimaryNationalityOnlyDual_Sel.EmployeeID
GO
