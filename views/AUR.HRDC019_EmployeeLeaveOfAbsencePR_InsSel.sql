SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* 
	Note this view is being used to build the foundation data - and as the rules have not been finalised - as a temporary measure the LastDayOfWork just uses the 
	FirstDayOfLeave minus 1 Day. This needs to be refined using the Emps work schedule
*/

ALTER view [AUR].[HRDC019_EmployeeLeaveOfAbsencePR_InsSel] as 

SELECT DISTINCT
   T001.T001F005_EMPLOYEE_NO as EmployeeID
 , T900.T900F015_SHORT_DESCRIPTION  as LeaveTypeName
 , dateadd(dd,-1,T522.T522F040_DATE_FROM) as LastDayOfWork
 , T522.T522F040_DATE_FROM as FirstDayOfLeave
 , T522.T522F045_DATE_TO as EstimatedLastDayOfLeave
 , '' as LastDateForWhichPaid
 , '' as ExpectedDueDate
 , '' as ChildsBirthDate
 , '' as DateBabyArrivedHomeFromHospital
 , '' as AdoptionPlacementDate
 , '' as MultipleChildIndicator
 , '' as NumberOfBabiesAdoptedChildren
 , '' as NumberOfPreviousBirths
 , '' as NumberOfPreviousMaternityLeaves
 , '' as NumberOfChildDependents
 , '' as SingleParentIndicator
 , '' as AgeOfDependent
 , T522.T522F185_RESUME_DUTIES as FirstDayOfWork
 , T522.T522F045_DATE_TO as ActualLastDayOfLeave

FROM AUR.[T001_BASIC_DETAILS] T001
LEFT OUTER JOIN [AUR].[T522_LEAVE_OCCURRENCE] T522
on T522.T522F005_EMPLOYEE_NO = t001.T001F005_EMPLOYEE_NO
LEFT OUTER JOiN aur.t900_codes T900
on T900.T900F010_CODE = T522.T522F025_TIME_CODE
WHERE T001F015_EMPLOYEE_STATUS <> 'TERMINATED'
GO
