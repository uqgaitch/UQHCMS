USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC018_EmployeeTimeOffEvents_LeavePerDay_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC018_EmployeeTimeOffEvents_LeavePerDay_Upd]
AS
begin
update [WD].[trHRDC018_EmployeeTimeOffEvents_LeavePerDay_UpdSel]
set  zTimeOffUnitsHoursMins = zTimeOffUnitsHoursMinsNew
, zLeavePerDay = zLeavePerDayNew
,zLeaveDays = zLeaveDaysNew
END
GO
