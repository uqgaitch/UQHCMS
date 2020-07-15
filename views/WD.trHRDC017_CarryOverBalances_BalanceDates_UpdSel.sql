USE [DQS_STAGING_DATA]
GO

/****** Object:  View [WD].[trHRDC017_CarryOverBalances_BalanceDates_UpdSel]    Script Date: 15/07/2020 3:57:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- Change by Pete for E2E 15.07.2020

ALTER VIEW [WD].[trHRDC017_CarryOverBalances_BalanceDates_UpdSel]
AS
SELECT WD.HRDC017_CarryOverBalances.OverrideBalanceDate, MAP.BalanceDates.BalanceDate AS OverrideBalanceDateNew, WD.HRDC017_CarryOverBalances.zTimeOffPlanName, WD.HRDC017_CarryOverBalances.TimeOffPlanName
FROM   WD.HRDC017_CarryOverBalances INNER JOIN
             MAP.BalanceDates ON WD.HRDC017_CarryOverBalances.zTimeOffPlanName = MAP.BalanceDates.LeaveType
GO



