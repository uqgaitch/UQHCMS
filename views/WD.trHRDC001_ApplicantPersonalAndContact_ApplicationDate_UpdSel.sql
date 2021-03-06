USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_ApplicationDate_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_ApplicationDate_UpdSel]
AS
SELECT        WD.HRDC001_ApplicantPersonalAndContact.ApplicantEnteredDate,
WD.trHRDC001_ApplicantPersonalAndContact_ApplicationDate_Sel.ApplicantEnteredDate AS ApplicantEnteredDateNew
FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
WD.trHRDC001_ApplicantPersonalAndContact_ApplicationDate_Sel ON 
WD.HRDC001_ApplicantPersonalAndContact.EmployeeID = WD.trHRDC001_ApplicantPersonalAndContact_ApplicationDate_Sel.WAMIKey
GO
