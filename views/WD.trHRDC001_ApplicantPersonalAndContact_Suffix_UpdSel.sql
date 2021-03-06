USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_Suffix_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_Suffix_UpdSel]
AS
SELECT WD.HRDC001_ApplicantPersonalAndContact.Suffix, AUR.T000_WAMI.T000F185_EXTRA_FIELD1 AS SuffixNew, WD.HRDC001_ApplicantPersonalAndContact.SuffixType, 
'SOCIAL' AS SuffixTypeNew
FROM   WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
             AUR.T000_WAMI ON WD.HRDC001_ApplicantPersonalAndContact.EmployeeID = AUR.T000_WAMI.T000F005_WAMI_KEY
WHERE (AUR.T000_WAMI.T000F185_EXTRA_FIELD1 IS NOT NULL)
GO
