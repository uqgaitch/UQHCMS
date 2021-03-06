USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC003_ApplicantDemographic_CitizenshipStatusDescriptionAUS_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC003_ApplicantDemographic_CitizenshipStatusDescriptionAUS_UpdSel]  AS
SELECT WD.HRDC003_ApplicantDemographic.CitizenshipStatusDescription,
'AUS' as CitizenshipStatusDescriptionNew
	
FROM   WD.HRDC003_ApplicantDemographic INNER JOIN
             AUR.T031_EXTRA_DETAILS ON WD.HRDC003_ApplicantDemographic.EmployeeID = AUR.T031_EXTRA_DETAILS.T031F005_WAMI_KEY
			 where AUR.T031_EXTRA_DETAILS.T031F015_USER_FIELD_01 in ('APSRT', 'AUBRTH' , 'AUCTZN') 

GO
