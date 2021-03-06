USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_WorkEmailT803_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_WorkEmailT803_UpdSel] AS
SELECT 
WD.HRDC001_ApplicantPersonalAndContact.zT803EmailAddress, 
AUR.T803_SECURITY_USER.T803F300_EMAIL_ADDRESS AS zT803EmailAddressNew, 
WD.HRDC001_ApplicantPersonalAndContact.WorkEmailAddress, 
AUR.T803_SECURITY_USER.T803F300_EMAIL_ADDRESS AS WorkEmailAddressNew, 
WD.HRDC001_ApplicantPersonalAndContact.zEmailAddressInvalid,
NULL AS zEmailAddressInvalidNew, 
WD.HRDC001_ApplicantPersonalAndContact.WorkEmailPrimary,
'Y' AS WorkEmailPrimaryNew
FROM   WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
             AUR.T803_SECURITY_USER ON WD.HRDC001_ApplicantPersonalAndContact.EmployeeID
			 = AUR.T803_SECURITY_USER.T803F050_WAMI_KEY
			

GO
