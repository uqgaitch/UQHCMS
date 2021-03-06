USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_WorkEmailAddress_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_WorkEmailAddress_UpdSel] AS
SELECT        WD.HRDC001_ApplicantPersonalAndContact.WorkEmailAddress, CASE WHEN T000F160_EMAIL_ADDRESS LIKE '%edu.au%' OR
                         T000F160_EMAIL_ADDRESS LIKE '%gov.au%' OR
                         T000F160_EMAIL_ADDRESS LIKE '%org.au%' THEN T000F160_EMAIL_ADDRESS ELSE NULL END AS WorkEmailAddressNew, WD.HRDC001_ApplicantPersonalAndContact.WorkEmailPrimary, 
                         CASE WHEN T000F160_EMAIL_ADDRESS LIKE '%edu.au%' OR
                         T000F160_EMAIL_ADDRESS LIKE '%gov.au%' OR
                         T000F160_EMAIL_ADDRESS LIKE '%org.au%' THEN 'Y' ELSE 'N' END AS WorkEmailPrimaryNew
FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
                         AUR.T000_WAMI ON WD.HRDC001_ApplicantPersonalAndContact.EmployeeID = AUR.T000_WAMI.T000F005_WAMI_KEY
where zEmailAddressInvalid is null
GO
