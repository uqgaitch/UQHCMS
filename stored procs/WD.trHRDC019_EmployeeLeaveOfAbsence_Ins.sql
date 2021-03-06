USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC019_EmployeeLeaveOfAbsence_Ins]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC019_EmployeeLeaveOfAbsence_Ins]
AS
begin
insert into [wd].[HRDC019_EmployeeLeaveOfAbsence]
(EmployeeID,
LeaveTypeName, 
FirstDayOfLeave, 
EstimatedLastDayOfLeave, 
FirstDayOfWork,
ActualLastDayOfLeave,
zLeaveOccType,
zEmployeeID,
zTimeCode,
zWamiKey,
zSource,
zLoadDate)

select
EmployeeID,
LeaveTypeName, 
FirstDayOfLeave, 
EstimatedLastDayOfLeave, 
FirstDayOfWork,
ActualLastDayOfLeave, 
zLeaveOccType,
zEmployeeID,
zTimeCode,
zWamiKey,
zSource,
zLoadDate
from [WD].[trHRDC019_EmployeeLeaveOfAbsence_InsSel]

END
GO
