USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_WorkEmailAddressDefault_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_WorkEmailAddressDefault_UpdSel] AS
SELECT        WD.HRDC001_ApplicantPersonalAndContact.WorkEmailAddress, WD.Param.DefaultEmailAddress AS WorkEmailAddressNew, 
WD.HRDC001_ApplicantPersonalAndContact.WorkEmailPrimary, 
                         'Y' AS WorkEmailPrimaryNew,
						 HomeEmailPrimary,
						 'N' as HomeEmailPrimaryNew
FROM            WD.HRDC001_ApplicantPersonalAndContact CROSS JOIN
                         WD.Param
WHERE        (WD.HRDC001_ApplicantPersonalAndContact.zEmailAddressInvalid = N'X')


GO
