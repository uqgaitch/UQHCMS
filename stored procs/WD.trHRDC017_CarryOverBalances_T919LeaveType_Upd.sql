USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC017_CarryOverBalances_T919LeaveType_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC017_CarryOverBalances_T919LeaveType_Upd] AS
begin
update [WD].[trHRDC017_CarryOverBalances_T919LeaveType_UpdSel]
set zT919TimeOffPlanName = zT919TimeOffPlanNameNew


END
GO
