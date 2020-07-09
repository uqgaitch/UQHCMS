USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC017_CarryOverBalances_CarryOverExpirationDate_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvHRDC017_CarryOverBalances_CarryOverExpirationDate_UpdSel]
AS
SELECT        WD.HRDC017_CarryOverBalances.CarryoverExpirationDate,
WD.tvHRDC017_CarryOverBalances_CarryOverExpirationDate_Sel.CarryOverExpirationDate AS CarryOverExpirationDateNew
FROM            WD.HRDC017_CarryOverBalances INNER JOIN
WD.tvHRDC017_CarryOverBalances_CarryOverExpirationDate_Sel ON WD.HRDC017_CarryOverBalances.EmployeeID = 
WD.tvHRDC017_CarryOverBalances_CarryOverExpirationDate_Sel.EmployeeID
GO
