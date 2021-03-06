USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC005_ApplicantOtherID_VISAExclude_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC005_ApplicantOtherID_VISAExclude_UpdSel] as
SELECT WD.HRDC005_ApplicantOtherID.zExclude, 
'X' as zExcludeNew,
WD.HRDC005_ApplicantOtherID.zExcludeReason, 
'VISA Type "' + WD.HRDC005_ApplicantOtherID.VisaTypeName + '" not in Mapping - excluding record' as zExcludeReasonNew
FROM   WD.HRDC005_ApplicantOtherID LEFT OUTER JOIN
             MAP.VISAIDTypes ON WD.HRDC005_ApplicantOtherID.VisaTypeName = MAP.VISAIDTypes.Aurion
WHERE (MAP.VISAIDTypes.Aurion IS NULL) AND (WD.HRDC005_ApplicantOtherID.VisaTypeName IS NOT NULL)
GO
