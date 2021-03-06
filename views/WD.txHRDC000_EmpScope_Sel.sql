USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC000_EmpScope_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[txHRDC000_EmpScope_Sel] as

SELECT  TOP 100 PERCENT  
WAMIKey, 
EmployeeID, 
EmployeeStatus, 
Surname, 
FirstName, 
PositionID, 
OrgUnitID, 
PositionStatus, 
PositionType, 
AttendanceType, 
EmploymentType, 
ActualDateEffective, 
DateCommenced, 
OriginalDateCommenced, 
ContractExpiryDate, 
ActualDateTo, 
AdminPayrollFrom, 
AdminLeaveFrom, 
PayEntity, 
zHireType, 
zExclude, 
zExcludeReason, 
zSource, 
zLoadDate, 
zAssignmentType
FROM            WD.EmpScope
ORDER BY WAMIKey, EmployeeID
GO
