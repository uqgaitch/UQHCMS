USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC018_EmployeeTimeOffEvents_ExcludeWeekend_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC018_EmployeeTimeOffEvents_ExcludeWeekend_Upd]
AS
begin
update [WD].[trHRDC018_EmployeeTimeOffEvents_ExcludeWeekend_UpdSel]
set  zExclude = zExcludeNew, zExcludeReason = zExcludeReasonNew

END
GO
