USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC018_EmployeeTimeOffEvents_ExcludePublicHolidays_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC018_EmployeeTimeOffEvents_ExcludePublicHolidays_UpdSel]  AS
select zExclude,
'X' as zExcludeNew, 
zExcludeReason,
'Leave day is on a Public Holiday (' + replace(a.HolidayType,'_',' ') + ')' 
 zExcludeReasonNew, TimeOffDate

from wd.HRDC018_EmployeeTimeOffEvents
inner join 
wd.Holidays a
on a.HolidayDate = TimeOffDate


GO
