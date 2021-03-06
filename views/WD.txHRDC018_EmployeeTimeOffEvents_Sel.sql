USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC018_EmployeeTimeOffEvents_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[txHRDC018_EmployeeTimeOffEvents_Sel]  AS
SELECT        
isnull(EmployeeID,'') as EmployeeID
,isnull(TimeOffDate,'') as TimeOffDate
,isnull(zLeavePerDay, '') as TimeOffUnits
,isnull(zTimeCode,'') as TimeOffTypeNameOrCode
, ROW_NUMBER() over (order by EmployeeID, TimeOffDate) as RowNum
FROM            WD.HRDC018_EmployeeTimeOffEvents where zExclude is null



GO
