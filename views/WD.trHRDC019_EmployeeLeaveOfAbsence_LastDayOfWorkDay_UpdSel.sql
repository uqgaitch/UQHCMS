USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC019_EmployeeLeaveOfAbsence_LastDayOfWorkDay_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[trHRDC019_EmployeeLeaveOfAbsence_LastDayOfWorkDay_UpdSel]  AS

select zLastDayOfWorkDayOfWeek,
	case 
		when datepart(weekday, zLastDayOfWork) = '1' then 'SUNDAY'
		when datepart(weekday, zLastDayOfWork) = '2' then 'MONDAY'
		when datepart(weekday, zLastDayOfWork) = '3' then 'TUESDAY'
		when datepart(weekday, zLastDayOfWork) = '4' then 'WEDNESDAY'
		when datepart(weekday, zLastDayOfWork) = '5' then 'THURSDAY'
		when datepart(weekday, zLastDayOfWork) = '6' then 'FRIDAY'
		when datepart(weekday, zLastDayOfWork) = '7' then 'SATURDAY'
	End as zLastDayOfWorkDayOfWeekNew		
		 from wd.HRDC019_EmployeeLeaveOfAbsence

GO
