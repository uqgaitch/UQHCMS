USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_Upd]
AS
begin
update [WD].[trHRDC019_EmployeeLeaveOfAbsence_ConsecutiveLeaveConnectToOrigLastDayOfWork_UpdSel]
set  zLastDayOfWork = zLastDayOfWorkNew

END
GO
