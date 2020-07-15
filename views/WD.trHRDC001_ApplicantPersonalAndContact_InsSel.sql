USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_InsSel]  AS

SELECT        WAMIKey AS EmployeeID, WAMIKey AS zWAMIKey, zSource, GETDATE() AS zLoadDate
FROM            WD.svEmpScope_UniqueWAMIKey_Sel

GO
