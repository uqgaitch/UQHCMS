USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC019_EmployeeLeaveOfAbsence_LastDayOfWorkAdjustWeekend_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC019_EmployeeLeaveOfAbsence_LastDayOfWorkAdjustWeekend_UpdSel]  AS

select zLastDayOfWork, convert(varchar, zLastDayOfWorkNew, 23) as zLastDayOfWorkNew, zLastDayOfWorkAdjustedForWeekend,zLastDayOfWorkAdjustedForWeekendNew
from (

select  zLastDayOfWork,
	case 
		when zLastDayOfWorkDayOfWeek = 'SUNDAY' then 
		dateadd(d, -2, zLastDayOfWork)		
		when zLastDayOfWorkDayOfWeek = 'SATURDAY' then 
		dateadd(d, -1, zLastDayOfWork)
	else zLastDayOfWork
	End as zLastDayOfWorkNew,
	zLastDayOfWorkAdjustedForWeekend,
	case 
		when zLastDayOfWorkDayOfWeek = 'SUNDAY' or zLastDayOfWorkDayOfWeek = 'SATURDAY' then 'X'
	else NULL 
	End as zLastDayOfWorkAdjustedForWeekendNew
	
		 from wd.HRDC019_EmployeeLeaveOfAbsence
		 )A
GO
