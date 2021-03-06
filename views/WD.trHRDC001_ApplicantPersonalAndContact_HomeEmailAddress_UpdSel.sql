USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_HomeEmailAddress_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_HomeEmailAddress_UpdSel] AS
SELECT        WD.HRDC001_ApplicantPersonalAndContact.HomeEmailAddress, CASE WHEN T000F160_EMAIL_ADDRESS NOT LIKE '%edu.au%' AND T000F160_EMAIL_ADDRESS NOT LIKE '%gov.au%' AND 
                         T000F160_EMAIL_ADDRESS NOT LIKE '%org.au%' THEN T000F160_EMAIL_ADDRESS ELSE NULL END AS HomeEmailAddressNew, WD.HRDC001_ApplicantPersonalAndContact.HomeEmailPrimary, 
                         CASE WHEN T000F160_EMAIL_ADDRESS NOT LIKE '%edu.au%' AND T000F160_EMAIL_ADDRESS NOT LIKE '%gov.au%' AND 
                         T000F160_EMAIL_ADDRESS NOT LIKE '%org.au%' THEN 'Y' ELSE 'N' END AS HomeEmailPrimaryNew
FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
                         AUR.T000_WAMI ON WD.HRDC001_ApplicantPersonalAndContact.EmployeeID = AUR.T000_WAMI.T000F005_WAMI_KEY
where zEmailAddressInvalid is null

GO
