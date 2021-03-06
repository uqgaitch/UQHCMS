USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_zEmailAddress_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_zEmailAddress_UpdSel] AS
SELECT        WD.HRDC001_ApplicantPersonalAndContact.zEmailAddress, 
		     ltrim(rtrim(AUR.T000_WAMI.T000F160_EMAIL_ADDRESS)) AS zEmailAddressNew
FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
AUR.T000_WAMI ON WD.HRDC001_ApplicantPersonalAndContact.zWAMIKey = AUR.T000_WAMI.T000F005_WAMI_KEY

GO
