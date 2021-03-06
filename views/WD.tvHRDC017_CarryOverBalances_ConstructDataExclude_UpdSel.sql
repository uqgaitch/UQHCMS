USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC017_CarryOverBalances_ConstructDataExclude_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvHRDC017_CarryOverBalances_ConstructDataExclude_UpdSel]
AS
SELECT WD.HRDC017_CarryOverBalances.zExclude, 'X' AS zExcludeNew, WD.HRDC017_CarryOverBalances.zExcludeReason, 'Constructed data not in EmpScope' AS zExcludeReasonNew
FROM   WD.HRDC017_CarryOverBalances LEFT OUTER JOIN
             WD.svEmpScope_UniqueWAMIKey_Sel ON WD.HRDC017_CarryOverBalances.EmployeeID = WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey
WHERE (WD.svEmpScope_UniqueWAMIKey_Sel.WAMIKey IS NULL)
GO
