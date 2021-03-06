USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC018_EmployeeTimeOffEvents_ExcludeWeekend_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC018_EmployeeTimeOffEvents_ExcludeWeekend_UpdSel]  AS
select zExclude,
'X' as zExcludeNew, 
zExcludeReason,
'Leave day is on a Weekend ' +
case 
	when datepart(weekday, TimeOffDate) = '1' then '(Sunday)'
	when datepart(weekday, TimeOffDate) = '7' then '(Saturday)'
	end as zExcludeReasonNew

from wd.HRDC018_EmployeeTimeOffEvents
where datepart(WEEKDAY, TimeOffDate) in (1,7)

GO
