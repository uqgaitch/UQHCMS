USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC019_EmployeeLeaveOfAbsence_LastDayOfWorkPubHol_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[trHRDC019_EmployeeLeaveOfAbsence_LastDayOfWorkPubHol_UpdSel]  AS


select zLastDayOfWork, convert(varchar, dateadd(d,DaysToAdjust,zLastDayOfWork), 23)  as zLastDayOfWorkNew ,
zLastDayOfWorkAdjustedForPubHol, 'X' as zLastDayOfWorkAdjustedForPubHolNew
from wd.HRDC019_EmployeeLeaveOfAbsence
inner join wd.holidays HOL
on zLastDayOfWork = HOL.HolidayDate
GO
