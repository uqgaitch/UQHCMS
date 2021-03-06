USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC018_EmployeeTimeOffEvents_LeavePerDay_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[tvHRDC018_EmployeeTimeOffEvents_LeavePerDay_Sel]  AS
select employeeid, zdatefrom, TimeOffUnits, 
  cast(TotalMins / 60 + (TotalMins % 60) / 100.0 as decimal(10,2)) as zTimeOffUnitsHoursMins,
  LeaveDays, LeavePerDay, HoursPortion, DecimalPortion,
 MinsPortion,
TotalMins,
LeavePerDayMins,
cast(LeavePerDayMins / 60 + (LeavePerDayMins % 60) / 100.0 as decimal(10,2)) as zLeavePerDay
, zTransNo
 from (

select employeeid, zdatefrom, TimeOffUnits, LeaveDays, LeavePerDay, HoursPortion, DecimalPortion,
cast(decimalportion *.6 as int) as MinsPortion,
cast(HoursPortion * 60 + cast(DecimalPortion *.6 as int) as int) as TotalMins,
cast(HoursPortion * 60 + cast(DecimalPortion *.6 as int) as int) / LeaveDays as LeavePerDayMins,
zTransNo
from (

select employeeid, zdatefrom, TimeOffUnits, LeaveDays, 
cast(TimeOffUnits / LeaveDays as decimal(5,2)) as LeavePerDay,
case	
	when TimeOffUnits not like '%.%' then
			TimeOffUnits 
	else
		substring(cast(TimeOffUnits as nvarchar(10)), 1, charindex('.',TimeOffUnits ) -1) 
end  as HoursPortion,
case	
	when TimeOffUnits not like '%.%' then
		0 
	else
		substring(cast(TimeOffUnits as nvarchar(10)), charindex('.',TimeOffUnits) +1 , 2)
end as DecimalPortion, zTransNo
from (
select employeeid, zdatefrom, count(*) as LeaveDays, cast(TimeOffUnits as decimal(10,3)) as TimeOffUnits, zTransNo
from wd.HRDC018_EmployeeTimeOffEvents
where zexclude is null 
group by employeeid, zDateFrom, TimeOffUnits, zTransNo
)A
)B
)C






GO
