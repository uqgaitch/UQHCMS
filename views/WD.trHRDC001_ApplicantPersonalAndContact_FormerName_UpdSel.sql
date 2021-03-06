USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_FormerName_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_FormerName_UpdSel]
AS
SELECT WD.HRDC001_ApplicantPersonalAndContact.FormerNameCountryISO,
WD.HRDC001_ApplicantPersonalAndContact.CountryISOCode AS FormerNameCountryISONew, 
WD.HRDC001_ApplicantPersonalAndContact.FormerFirstName, 
WD.HRDC001_ApplicantPersonalAndContact.LegalFirstName AS FormerFirstNameNew, 
WD.HRDC001_ApplicantPersonalAndContact.FormerLastName, 
AUR.T000_WAMI.T000F125_PRIOR_SURNAME AS FormerLastNameNew
FROM   WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
             AUR.T000_WAMI ON WD.HRDC001_ApplicantPersonalAndContact.EmployeeID = 
			 AUR.T000_WAMI.T000F005_WAMI_KEY
			 where AUR.T000_WAMI.T000F125_PRIOR_SURNAME is not null

GO
