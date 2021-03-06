USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC003_ApplicantDemographic_CitizenshipStatusCountryISOCode_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC003_ApplicantDemographic_CitizenshipStatusCountryISOCode_UpdSel]  AS
SELECT WD.HRDC003_ApplicantDemographic.CitizenshipStatusCountryISOCode, WD.EmpScope.LocationDesc AS CitizenshipStatusCountryISOCodeNew
FROM   WD.HRDC003_ApplicantDemographic INNER JOIN
             WD.EmpScope ON WD.HRDC003_ApplicantDemographic.EmployeeID = WD.EmpScope.WAMIKey
WHERE (WD.EmpScope.LocationDesc IS NOT NULL)

GO
