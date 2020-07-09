USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC019_EmployeeLeaveOfAbsence_DurationDays_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






ALTER view [WD].[trHRDC019_EmployeeLeaveOfAbsence_DurationDays_UpdSel]  AS


select FirstDayOfLeave,EstimatedLastDayOfLeave, 
zDurationDays, datediff(day,FirstDayOfLeave, EstimatedLastDayOfLeave) + 1 as zDurationDaysNew
from wd.hrdc019_employeeleaveofabsence



GO
