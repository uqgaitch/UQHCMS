USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScope_Subs_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trEmpScope_Subs_Ins]
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
zAssignmentType,
zSubs,
zEmpOnSecondment
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
zAssignmentType,
zSubs,
zEmpOnSecondment
from [WD].[trEmpScope_Subs_InsSel]
END


GO
