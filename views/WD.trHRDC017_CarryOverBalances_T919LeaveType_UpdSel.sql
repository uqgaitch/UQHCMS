USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC017_CarryOverBalances_T919LeaveType_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC017_CarryOverBalances_T919LeaveType_UpdSel]  AS
SELECT        WD.HRDC017_CarryOverBalances.zT919TimeOffPlanName, AUR.T919_LEAVE_TYPE_CODE.T919F010_LEAVE_TYPE_DESC AS zT919TimeOffPlanNameNew
FROM            WD.HRDC017_CarryOverBalances INNER JOIN
                         AUR.T919_LEAVE_TYPE_CODE ON WD.HRDC017_CarryOverBalances.TimeOffPlanName = AUR.T919_LEAVE_TYPE_CODE.T919F005_LEAVE_TYPE_CODE


GO
