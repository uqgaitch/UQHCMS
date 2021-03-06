USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC018_EmployeeTimeOffEvents_Ins]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC018_EmployeeTimeOffEvents_Ins]
AS
begin
insert into [wd].[HRDC018_EmployeeTimeOffEvents]
(EmployeeID, TimeOffDate,TimeOffUnits,
TimeOffTypeNameOrCode,zDateTo,
zTransNo,zEmployeeID, zWAMIKey, zSource, zLoadDate, zTimeCode)

select
WAMIKey, 
TimeOffDate,
TimeOffUnits,
TimeOffTypeNameOrCode,
zDateTo,
zTransNo,
EmployeeID,
WAMIKey, 
zSource, 
zLoadDate,
zTimeCode
from [WD].[trHRDC018_EmployeeTimeOffEvents_InsSel]
OPTION (MAXRECURSION 0)
END
GO
