USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC005_ApplicantOtherID_TH_REUTERS_RESEARCHER_ID_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[trHRDC005_ApplicantOtherID_TH_REUTERS_RESEARCHER_ID_InsSel] as
SELECT WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey AS EmployeeID, WD.tvHRDC005_ApplicantOtherID_Researchers_Sel.TH_REUTERS_RESEARCHER_ID AS CustomID4,
'RESEARCHER_ID' AS CustomID4TypeName, '' AS CustomID4Description, WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey AS zWAMIKey, 
             WD.svEmpScope_UniqueWAMIKey_Sel.zSource, GETDATE() AS zLoadDate
FROM   WD.svEmpScope_UniqueWAMIKey_Sel INNER JOIN
             WD.tvHRDC005_ApplicantOtherID_Researchers_Sel ON WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey = WD.tvHRDC005_ApplicantOtherID_Researchers_Sel.AURION_ID CROSS JOIN
             WD.Param
WHERE (WD.tvHRDC005_ApplicantOtherID_Researchers_Sel.TH_REUTERS_RESEARCHER_ID IS NOT NULL)
and WD.tvHRDC005_ApplicantOtherID_Researchers_Sel.TH_REUTERS_RESEARCHER_ID <> ''

GO
