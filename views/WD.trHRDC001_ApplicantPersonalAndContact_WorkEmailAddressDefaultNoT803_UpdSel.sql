USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_WorkEmailAddressDefaultNoT803_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_WorkEmailAddressDefaultNoT803_UpdSel] AS
SELECT        WD.HRDC001_ApplicantPersonalAndContact.WorkEmailAddress, WD.Param.DefaultEmailAddress AS WorkEmailAddressNew, WD.HRDC001_ApplicantPersonalAndContact.WorkEmailPrimary, 
                         'Y' AS WorkEmailPrimaryNew
FROM            WD.HRDC001_ApplicantPersonalAndContact CROSS JOIN
                         WD.Param
WHERE        (WD.HRDC001_ApplicantPersonalAndContact.zNoContactDetails = 'x') 
AND (WD.HRDC001_ApplicantPersonalAndContact.WorkEmailAddress IS NULL)


GO
