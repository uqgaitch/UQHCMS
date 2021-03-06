USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC002_ApplicantAddressDetails_ExcludeConstructedDataNotInScope_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC002_ApplicantAddressDetails_ExcludeConstructedDataNotInScope_UpdSel]
AS
SELECT WD.HRDC002_ApplicantAddress.zExclude, 'X' AS zExcludeNew, WD.HRDC002_ApplicantAddress.zExcludeReason, 'Emp not part of scope' AS zExcludeReasonNew
FROM   WD.HRDC002_ApplicantAddress LEFT OUTER JOIN
             WD.EmpScope ON WD.HRDC002_ApplicantAddress.EmployeeID = WD.EmpScope.WAMIKey
WHERE (WD.EmpScope.WAMIKey IS NULL)
GO
