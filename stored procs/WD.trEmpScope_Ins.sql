USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScope_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trEmpScope_Ins]
AS
begin
insert into [wd].[EmpScope]
(
WAMIKey, 
EmployeeID, 
EmployeeStatus, 
Surname, 
FirstName, 
PositionID, 
SubsPositionID, 
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
AwardCode,
PayEntity,
JobCode,
JobFamily,
zHireType,
zExclude, 
zExcludeReason, 
zSource, 
zLoadDate, 
zAssignmentType
)
select  WAMIKey, 
EmployeeID, 
EmployeeStatus, 
Surname, 
FirstName, 
PositionID, 
SubsPositionID, 
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
AwardCode,
PayEntity,
JobCode,
JobFamily,
zHireType,
zExclude, 
zExcludeReason, 
zSource, 
zLoadDate, 
zAssignmentType
from [WD].[trEmpScope_InsSel]
END


GO
