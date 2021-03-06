USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_Prefix_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_Prefix_UpdSel]
AS
SELECT        WD.HRDC001_ApplicantPersonalAndContact.Prefix, AUR.T000_WAMI.T000F030_SALUTATION AS PrefixNew
FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
                         AUR.T000_WAMI ON WD.HRDC001_ApplicantPersonalAndContact.EmployeeID = AUR.T000_WAMI.T000F005_WAMI_KEY
GO
